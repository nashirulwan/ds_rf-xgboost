{
  description = "Data science project environment with Jupyter";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [
        "x86_64-linux"
        "aarch64-linux"
      ];

      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in
    {
      devShells = forAllSystems (system:
        let
          pkgs = import nixpkgs { inherit system; };
          python = pkgs.python312.withPackages (ps: with ps; [
            ipykernel
            jupyterlab
            matplotlib
            notebook
            numpy
            pandas
            scikit-learn
            scipy
            seaborn
            xgboost
          ]);
        in
        {
          default = pkgs.mkShell {
            packages = [
              python
            ];

            shellHook = ''
              echo "Data science environment ready."
              echo "Run: jupyter lab"
            '';
          };
        });
    };
}
