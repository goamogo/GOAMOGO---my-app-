//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        //서초구
        Location(
            name: "Blue Page 블루페이지",
            cityName: "Seocho-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.51871065513, longitude: 127.00816434045),
            description: "Italian restaurant",
            imageNames: [
                "bluepage1",
                "bluepage2",
                "bluepage3"
            ],
            link: "https://www.instagram.com/bluepagelounge"),
        //강동구
        Location(
            name: "Hada Shikdang 하다식당",
            cityName: "Gangdong-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.532420, longitude: 127.123976),
            description: "Specializes in Donkatsu",
            imageNames: [
                "hada1",
                "hada2",
                "hada3"
            ],
            link: "http://instagram.com/hada_sikdang"),
        Location(
            name: "Chulpan Salon 철판살롱",
            cityName: "Gangdong-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.534100, longitude: 127.123770),
            description: "Teppanyaki fusion restaurant",
            imageNames: [
                "chulpan1",
                "chulpan2",
                "chulpan3"
            ],
            link: ""),
        Location(
            name: "udon sutbul myeongga 우돈숯불명가",
            cityName: "Gangdong-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.546312, longitude: 127.170694),
            description: "Korean bbq restaurant",
            imageNames: [
                "udon1",
                "udon2",
                "udon3"
            ],
            link: ""),
        Location(
            name: "dokkebi jokbal 도깨비 족발",
            cityName: "Gangdong-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.5374456, longitude: 127.1298944),
            description: "serves pork feet dish",
            imageNames: [
                "jokbal1",
                "jokbal2",
                "jokbal3",
            ],
            link: ""),
        Location(
            name: "Dorish 도리상회",
            cityName: "Gangdong-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.542940, longitude: 127.127330),
            description: "Specializes in spicy chicken, beef tripe stew",
            imageNames: [
                "dorish1",
                "dorish2",
                "dorish3"
            ],
            link: "https://www.instagram.com/dorish_ch"),
        Location(
            name: "Haeimsi 해임시",
            cityName: "Gangdong-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.542940, longitude: 127.127330),
            description: "offer a variety of foods that pair well with natural wine, traditional liquor, cocktails, and coffee",
            imageNames: [
                "hae1",
                "hae2",
                "hae3"
            ],
            link: "https://www.instagram.com/haeimsi"),
        Location(
            name: "Mancook 만국미식회",
            cityName: "Gangdong-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.537428, longitude: 127.126533),
            description: "Italian restaurant/pub",
            imageNames: [
                "man1",
                "man2",
                "man3"
            ],
            link: "https://www.instagram.com/mancook_ch/"),
        Location(
            name: "Goofy Dayz 구피데이즈",
            cityName: "Gangdong-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.542940, longitude: 127.127330),
            description: "Sells drinks and variety of food",
            imageNames: [
                "goofy1",
                "goofy2",
                "goofy3"
            ],
            link: "https://www.instagram.com/goofydayz.official/"),
        Location(
            name: "Send Salad 샌드샐러드",
            cityName: "Gangdong-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.548548, longitude: 127.135752),
            description: "Sells salad bowls",
            imageNames: [
                "send1",
                "send2",
                "send3"
            ],
            link: ""),
        //송파구
        Location(
            name: "Queenas 퀴너스",
            cityName: "Songpa-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.533870, longitude: 127.110940),
            description: "Pizza restaurant",
            imageNames: [
                "queen1",
                "queen2",
                "queen3"
            ],
            link: ""),
        Location(
            name: "Crumbus 크럼버스",
            cityName: "Songpa-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.503550, longitude: 127.133790),
            description: "Brunch restaurant",
            imageNames: [
                "crum1",
                "crum2",
                "crum3"
            ],
            link: "https://www.instagram.com/crumbus_songpa/"),
        Location(
            name: "Mamma 펫다이닝 맘마",
            cityName: "Songpa-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.508035063514, longitude: 127.133551746203),
            description: "The first fine dining concept dog restaurant in South Korea",
            imageNames: [
                "mam1",
                "mam2",
                "mam3"
            ],
            link: "https://www.instagram.com/mamma_petdining"),
        Location(
            name: "Salgreek 샐그릭",
            cityName: "Songpa-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.496720, longitude: 127.117440),
            description: "specializes in poke bowl, salad, greek yogurt, acai bowl etc",
            imageNames: [
                "sal1",
                "sal2",
                "sal3"
            ],
            link: "https://www.instagram.com/salgreek_garak"),
        Location(
            name: "Seonsuchon garden 선수촌가든",
            cityName: "Songpa-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.503550, longitude: 127.133790),
            description: "Korean bbq restaurant",
            imageNames: [
                "seon1",
                "seon2",
                "seon3"
            ],
            link: "https://www.instagram.com/seonsuchongarden/"),
        Location(
            name: "Abiko 아비꼬",
            cityName: "Songpa-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.514156, longitude: 127.119547),
            description: "Curry restaurant",
            imageNames: [
                "abi1",
                "abi2",
                "abi3"
            ],
            link: "https://www.instagram.com/abiko_olympicpark/?igshid=1pul7gi7178bt"),
        Location(
            name: "Kookmin 국민통닭",
            cityName: "Songpa-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.502483, longitude: 127.103495),
            description: "Sells Chicken",
            imageNames: [
                "kook1",
                "kook2",
                "kook3"
            ],
            link: "https://www.instagram.com/kookmin4560/"),
        Location(
            name: "Hiyoon kitchen 하이윤",
            cityName: "Songpa-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.504790, longitude: 127.113690),
            description: "Fusion restaurant",
            imageNames: [
                "hi1",
                "hi2",
                "hi3"
            ],
            link: "https://www.instagram.com/im.hiyoon"),
        Location(
            name: "Hellocrab 헬로크랩",
            cityName: "Songpa-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.502483, longitude: 127.103495),
            description: "Specializes in crabs",
            imageNames: [
                "crab1",
                "crab2",
                "crab3"
            ],
            link: "https://www.instagram.com/hellocrab_songpa/"),
        Location(
            name: "Happysfriday 해피스프라이데이",
            cityName: "Songpa-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.484340, longitude: 127.122460),
            description: "A restaurant that sells traditional alcoholic beverages",
            imageNames: [
                "hap1",
                "hap2",
                "hap3"
            ],
            link: "https://www.instagram.com/happysfriday__/"),
        //강남구
        Location(
            name: "Knock Knock 낰낰",
            cityName: "Gangnam-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.512302, longitude: 127.029494),
            description: "A private dining restaurant",
            imageNames: [
                "knock1",
                "knock2",
                "knock3"
            ],
            link: "https://www.instagram.com/knockknock.seoul/"),
        Location(
            name: "Sochul 구월의 소철",
            cityName: "Gangnam-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.512302, longitude: 127.029494),
            description: "Korean bbq fusion restaurant",
            imageNames: [
                "sep1",
                "sep2",
                "sep3"
            ],
            link: "https://www.instagram.com/sochul_sep"),
        Location(
            name: "Meatnbunburgershop 미트앤번버거샵",
            cityName: "Gangnam-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.499880, longitude: 127.038560),
            description: "Burger restaurant",
            imageNames: [
                "meat1",
                "meat2",
                "meat3"
            ],
            link: "https://www.instagram.com/meatnbunburgershop/"),
        Location(
            name: "Cry cheese burger 크라이치즈버거",
            cityName: "Gangnam-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.498820, longitude: 127.065660),
            description: "Burger restaurant",
            imageNames: [
                "cry1",
                "cry2",
                "cry3"
            ],
            link: "https://www.instagram.com/crycheeseburger.official"),
        Location(
            name: "Cafe drowsy 카페드로우지",
            cityName: "Gangnam-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.522321, longitude: 127.027702),
            description: "Brunch restaurant",
            imageNames: [
                "drow1",
                "drow2",
                "drow3"
            ],
            link: "https://www.instagram.com/cafedrowsy/"),
        Location(
            name: "Peach",
            cityName: "Gangnam-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.525894719887, longitude: 127.036184122337),
            description: "Brunch restaurant",
            imageNames: [
                "peach1",
                "peach2",
                "peach3"
            ],
            link: "https://www.instagram.com/peach_seoul/"),
        Location(
            name: "ALT.a 알트에이",
            cityName: "Gangnam-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.525285984168, longitude: 127.036175908072),
            description: "Plant Based Asian Cuisine",
            imageNames: [
                "alt1",
                "alt2",
                "alt3"
            ],
            link: "https://www.instagram.com/peach_seoul/"),
        Location(
            name: "Sun the Bud 썬더버드",
            cityName: "Gangnam-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.526187080669, longitude: 127.041701091007),
            description: "Eat Clean and Live Lean",
            imageNames: [
                "sun1",
                "sun2",
                "sun3"
            ],
            link: "https://www.instagram.com/sunthebud_official"),
        Location(
            name: "Indic slow 인딕슬로우",
            cityName: "Gangnam-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.521898521819, longitude: 127.020333524337),
            description: "Indian restaurant",
            imageNames: [
                "indic1",
                "indic2",
                "indic3"
            ],
            link: "https://www.instagram.com/indic.slow"),
        Location(
            name: "Mainichi ramen 마이니치라멘",
            cityName: "Gangnam-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.512218094204, longitude: 127.046112654287),
            description: "Japanese Ramen restaurant",
            imageNames: [
                "mai1",
                "mai2",
                "mai3"
            ],
            link: "https://www.instagram.com/mainichi_ramen_niboshi/"),
        //용산구
        Location(
            name: "Antibes 메종 앙티브",
            cityName: "Yongsan-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.537386225321, longitude: 127.002910229844),
            description: "French restaurant",
            imageNames: [
                "anti1",
                "anti2",
                "anti3"
            ],
            link: "https://catchtable.co.kr/Antibes_seoul"),
        Location(
            name: "Papavalley pizza 파파밸리피자",
            cityName: "Yongsan-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.552379606083, longitude: 126.97652383101),
            description: "Pizza restaurant",
            imageNames: [
                "papa1",
                "papa2",
                "papa3"
            ],
            link: "https://www.instagram.com/papahabio/"),
        Location(
            name: "Gooey 구위 브런치바",
            cityName: "Yongsan-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.540115582543, longitude: 126.962252886483),
            description: "Italian restaurant",
            imageNames: [
                "goo1",
                "goo2",
                "goo3"
            ],
            link: "https://www.instagram.com/gooey_brunch_bar"),
        Location(
            name: "Honfleur 옹플뢰르",
            cityName: "Yongsan-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.539073292883, longitude: 126.995196280533),
            description: "Brunch restaurant",
            imageNames: [
                "hon1",
                "hon2",
                "hon3"
            ],
            link: "https://www.instagram.com/honfleur_namsan"),
        Location(
            name: "Billionbox 빌리언박스",
            cityName: "Yongsan-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.539217922622, longitude: 126.989449982992),
            description: "Burger restaurant",
            imageNames: [
                "bil1",
                "bil2",
                "bil3"
            ],
            link: "https://www.instagram.com/billionbox.official/?hl=ko"),
        Location(
            name: "Bistro Gusto 비스트로구스토",
            cityName: "Yongsan-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.534942229993, longitude: 127.010231235535),
            description: "Italy Base European Bistro",
            imageNames: [
                "gus1",
                "gus2",
                "gus3"
            ],
            link: "https://www.instagram.com/bistro___gusto"),
        Location(
            name: "Matches 매치스",
            cityName: "Yongsan-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.542826373849, longitude: 126.973973636969),
            description: "A bar for humans and dogs",
            imageNames: [
                "mat1",
                "mat2",
                "mat3"
            ],
            link: "https://www.instagram.com/matches_seoul/"),
        Location(
            name: "shawnino 쇼니노",
            cityName: "Yongsan-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.526325130615, longitude: 126.963431549707),
            description: "Italian brunch bar",
            imageNames: [
                "shaw1",
                "shaw2",
                "shaw3"
            ],
            link: "https://www.instagram.com/shawnino_trattoria"),
        Location(
            name: "Cafe siva 카페시바",
            cityName: "Yongsan-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.542958472643, longitude: 126.972822047292),
            description: "Vegan fusion restaurant",
            imageNames: [
                "siva1",
                "siva2",
                "siva3"
            ],
            link: "https://www.instagram.com/cafe.siva"),
        Location(
            name: "Clappizza 클랩피자",
            cityName: "Yongsan-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.536157564044, longitude: 127.000562374946),
            description: "Pizza restaurant",
            imageNames: [
                "clap1",
                "clap2",
                "clap3"
            ],
            link: "https://www.instagram.com/clappizza/"),
        //중구
        Location(
            name: "Hunters Week 헌터스위크",
            cityName: "Jung-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.568831479907, longitude: 126.981919010627),
            description: "food truck",
            imageNames: [
                "hunter1",
                "hunter2",
                "hunter3"
            ],
            link: ""),
        Location(
            name: "Blossom Land 블러섬랜드",
            cityName: "Jung-gu",
            coordinates: CLLocationCoordinate2D(latitude: 37.555426344068, longitude: 126.976295591787),
            description: "A pub that also sells chicken",
            imageNames: [
                "blossom1",
                "blossom2",
                "blossom3"
            ],
            link: ""),
    ]
}
