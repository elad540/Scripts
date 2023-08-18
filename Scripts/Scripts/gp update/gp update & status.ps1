# Update Group Policy settings
echo "Updating Group Policy settings..."
gpupdate /force
echo "Group Policy update completed."
echo "`n"

# Check BitLocker status
function CheckBitLockerStatus {
    echo "Checking BitLocker status..."
    manage-bde /status
}

# Run the BitLocker check 2 times
CheckBitLockerStatus
CheckBitLockerStatus

echo "Script execution is complete"

