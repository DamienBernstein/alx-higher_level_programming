#!/usr/bin/node
//script that prints a message depending of the number of arguments passed
const args = process.argvs;
if (args.length === 2) 
{
 console.log(' No argument');
}
else if (args.length === 3)
{
 console.log('Argument found')
}
else
{
 console.log('Arguements found')
}
