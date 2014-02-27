using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using NUnit.Framework;

namespace IntegrationTests
{
    [TestFixture]
    public class SampleIntegrationTestFixture
    {
        [Test]
        public void SampleIntegrationTest()
        {
            Thread.Sleep(30 * 1000);
        }
    }
}
