# BitxorConfig repository

This repository will have the configuration needed for BitxorCore and multiples apps of repository Bitxor

## Features

- updateproof.sh: This will update the proof file with the last proof.
- updatepeers.sh: This will update the peers file with the last peers nodes.
- updatevoting.sh: This will update the voting file resources with the last voting config.
- restoredump.sh: This will restore a dump of all the chain of Bitxor, you need 2 files in your root home: BitxorCoreDBdump.tar.gz and Data.tar.gz.

## Running
updateproof:
`sudo wget -N https://github.com/BitxorCorp/BitxorConfig/raw/main/updateproof.sh && sudo chmod +x updateproof.sh && sudo ./updateproof.sh`

updatepeers:
`sudo wget -N https://github.com/BitxorCorp/BitxorConfig/raw/main/updatepeers.sh && sudo chmod +x updatepeers.sh && sudo ./updatepeers.sh`

updatevoting:
`sudo wget -N https://github.com/BitxorCorp/BitxorConfig/raw/main/updatevoting.sh && sudo chmod +x updatevoting.sh && sudo ./updatevoting.sh`

restoredump:
`sudo wget -N https://github.com/BitxorCorp/BitxorConfig/raw/main/restoredump.sh && sudo chmod +x restoredump.sh && sudo ./restoredump.sh`

## Contributing

Contributions are welcome. If you'd like to improve this project, follow these steps:

1. Fork the project.
2. Create a new branch (`git checkout -b bitxorcorp/bitxorconfig`).
3. Make the necessary changes and commit them (`git commit -am 'Add some feature'`).
4. Push your changes to the remote repository (`git push origin feature/feature-name`).
5. Open a pull request to review the changes.

## License

This project is licensed under the MIT License. You can refer to the [LICENSE](LICENSE) file for more details.

