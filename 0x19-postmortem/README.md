![500](https://user-images.githubusercontent.com/69303159/201354808-b29d8447-fe10-41f2-9b63-84e759139529.jpg)

<h1>BooktifuL requests a failure report</h1>

<p>Last week, it was reported that the BooktifuL platform was returning 500 Error on all requests made via platform routes, and that all services were unavailable. 90% of users were impacted. The failure of our master server web-01 was the root cause.<p/>

<h2>  Timeline </h2>

<p>When our Site Reliability Engineer, Mr. Emobile, saw the master server lagging in performance on Tuesday, November 8th at 12:00 hours (East Africa Time), he discovered the fault. Our on-call engineers unplugged the master server web-01 for additional system examination and routed all queries to client-server web-02. They resolved the issue by Friday, November 11th, 22:00 hours (East Africa Time).</p>
 <ul>12:00 AM - Server error occurs and outage is detected. </ul>
 <ul>12:02 AM - On-call devOps team checks the error logs.</ul>
 <ul>12:03 AM - Updates error configuration.</ul>
 <ul>12:04 AM - Filename error caught on the configuration file.</ul>
 <ul>12:06 AM - Writes a puppet manifest file to correct the error.</ul>
 <ul>10:08 AM - puppet manifest file is executed across all company servers.</ul>
 <ul>10:10 AM /Friday - The website is fully restored and working perfectly.</ul>


<h2>Root cause and resolution</h2>

<p> Two Ubuntu cloud servers power the BooktifuL platform. The master server web-01 was connected to serve all requests, and it stopped working due to a memory outage caused by so many requests since the client server web-02 was unplugged momentarily for testing and was not connected to the load balancer afterward during a prior test.</p>

<p> The problem was resolved by temporarily disconnecting the master server for memory cleaning, then reconnecting it to the load balancer, and configuring the round-robin algorithm so that both the master and client servers could handle an equal number of requests. </p>

<h2>Measures against such problem in future</h2>

<ul>Select the most appropriate load-balancing algorithm for your programs.</ul>
<ul>Keep an eye on your servers to ensure they are operational.</ul>
<ul>Maintain additional backup servers to prevent your program from going completely offline during an outage.</ul>
