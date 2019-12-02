#! /bin/bash
#cars.sh
#Keoni Lanoza

echo "Type 1 to list cars, 2 to add a car, or 3 to quit."
read N
while [  $N -ne 0  ]
do
	case $N in
		1)
		sort ./My_old_cars
		less ./My_old_cars
		;;
		2)
		echo "Enter the year of the car you are entering."
		read year
		echo "Enter the make of the car you are entering."
		read make
		echo "Enter the model of the car you are entering."
		read model
		echo $year:$make:$model >> ./My_old_cars
		less ./My_old_cars
		;;
		3)
		echo "Goodbye!"
		break
esac
done
