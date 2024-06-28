import { useEffect, useState } from 'react';

function App() {
  // Suggested code may be subject to a license. Learn more: ~LicenseLog:2616511461.
  const [data, setData] = useState<number>(0);
  const [isLoading, setIsLoading] = useState<boolean>(false);

  useEffect(() => {
    const fetchData = async () => {
      setIsLoading(true);
      const response = await fetch('https://3000-idx-idx-1719531010186.cluster-fu5knmr55rd44vy7k7pxk74ams.cloudworkstations.dev/api');
      const data = await response.json();
      setData(data);
      setIsLoading(false);
    };

    fetchData();
  }, []);

  return (
    <>
      <h1>App</h1>
      {isLoading ? <div>Loading...</div> : <div>{JSON.stringify(data)}</div>}
    </>
  );
}

export default App;
