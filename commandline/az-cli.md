`az account list-locations`

`az account list-locations -o table`

`az account list-locations --query "[].{DisplayName:displayName, Name:name}" -o table`

`az account list-locations --query "sort_by([].{DisplayName:displayName, Name:name}, &DisplayName)" --output table`
