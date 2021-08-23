using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace API_DB_connection_demo.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class OrganisationBriefController : ControllerBase
    {
        private readonly ILogger<OrganisationBriefController> _logger;

        public OrganisationBriefController(ILogger<OrganisationBriefController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public IEnumerable<OrganisationBrief> Get()
        {
            return DatabaseHandler.GetOrganisationBriefs();
        }
    }
}
