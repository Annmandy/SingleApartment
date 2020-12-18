using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using sln_SingelApartment.ViewModels;
using sln_SingleApartment.Models;

namespace sln_SingelApartment.ViewModels
{
    public class CLeaseViewModel
    {
        public Lease entity_lease { get; set; }

        [DisplayName("�X���Ǹ�")]
        public int? leaseID { get { return this.entity_lease.ID; } }

        [DisplayName("�ж��N��")]
        public int? roomID { get { return this.entity_lease.RoomID; } }

        [DisplayName("�и�")]
        public string roomname { get { return this.entity_lease.Room.RoomName; } }
       

        [DisplayName("�����}�l��")]
        [DisplayFormat(DataFormatString = "{0:yyyy/MM/dd/")]
        public DateTime? startdate { get { return this.entity_lease.StartDate; } }

        [DisplayName("���������")]
        [DisplayFormat(DataFormatString = "{0:yyyy/MM/dd/")]
        public DateTime? expirydate { get { return this.entity_lease.ExpiryDate; } }

        [DisplayName("�|���s��")]
        public int? memberID { get { return this.entity_lease.MemberID; } }


        [DisplayName("����")]
        public int? rent { get { return this.entity_lease.Room.Rent; } }
        [DisplayName("�Ыȯ���")]
        public int? personalrent { get { return this.entity_lease.PersonalRent;  } }

    }
}