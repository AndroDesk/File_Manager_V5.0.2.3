.class public final Lcom/android/fileexplorer/util/MimeUtils;
.super Ljava/lang/Object;
.source "MimeUtils.java"


# static fields
.field public static final EXTRA_AUDIO_EXTENSION:Ljava/lang/String; = "flac/ogg"

.field public static final MEDIA_TYPE_APK:I = 0x3

.field public static final MEDIA_TYPE_AUDIO:I = 0x1

.field public static final MEDIA_TYPE_IMAGE:I = 0x0

.field public static final MEDIA_TYPE_UNKNOWN:I = -0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x2

.field public static final MIME_ALL:Ljava/lang/String; = "*/*"

.field public static final MIME_APK:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final MIME_TYPE_AUDIO:Ljava/lang/String; = "audio/"

.field public static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/"

.field public static final MIME_TYPE_RECORED_AUDIO:Ljava/lang/String; = "audio/aac"

.field public static final MIME_TYPE_VIDEO:Ljava/lang/String; = "video/"

.field private static final TAG:Ljava/lang/String; = "MimeUtils"

.field private static final extensionToMimeTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mimeTypeToExtensionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/util/MimeUtils;->mimeTypeToExtensionsMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/util/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    const-string v0, "application/andrew-inset"

    const-string v1, "ez"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/dsptype"

    const-string v1, "tsp"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/futuresplash"

    const-string v1, "spl"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/hta"

    const-string v2, "hta"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/mac-binhex40"

    const-string v2, "hqx"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/mac-compactpro"

    const-string v2, "cpt"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/mathematica"

    const-string v3, "nb"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/msaccess"

    const-string v3, "mdb"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/oda"

    const-string v3, "oda"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/ogg"

    const-string v3, "ogg"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oga"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/aac"

    const-string v3, "aac"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pdf"

    const-string v3, "pdf"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pgp-keys"

    const-string v3, "key"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pgp-signature"

    const-string v3, "pgp"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pics-rules"

    const-string v3, "prf"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pkix-cert"

    const-string v3, "cer"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-rar-compressed"

    const-string v3, "rar"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/rdf+xml"

    const-string v3, "rdf"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/rss+xml"

    const-string v3, "rss"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/zip"

    const-string v3, "zip"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.android.package-archive"

    const-string v3, "apk"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.cinderella"

    const-string v3, "cdy"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-pki.stl"

    const-string v3, "stl"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.database"

    const-string v3, "odb"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.formula"

    const-string v3, "odf"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.graphics"

    const-string v3, "odg"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.graphics-template"

    const-string v3, "otg"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.image"

    const-string v3, "odi"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.spreadsheet"

    const-string v3, "ods"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.spreadsheet-template"

    const-string v3, "ots"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text"

    const-string v3, "odt"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text-master"

    const-string v3, "odm"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text-template"

    const-string v3, "ott"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text-web"

    const-string v3, "oth"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.google-earth.kml+xml"

    const-string v3, "kml"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.google-earth.kmz"

    const-string v3, "kmz"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/msword"

    const-string v3, "doc"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dot"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v3, "docx"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string v3, "dotx"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-excel"

    const-string v3, "xls"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-excel"

    const-string v3, "xlt"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v3, "xlsx"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const-string v3, "xltx"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-powerpoint"

    const-string v3, "ppt"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pot"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pps"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string v3, "pptx"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    const-string v3, "potx"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    const-string v3, "ppsx"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.rim.cod"

    const-string v3, "cod"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.smaf"

    const-string v3, "mmf"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.calc"

    const-string v3, "sdc"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.draw"

    const-string v3, "sda"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.impress"

    const-string v3, "sdd"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.impress"

    const-string v3, "sdp"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.math"

    const-string v3, "smf"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.writer"

    const-string v3, "sdw"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.writer"

    const-string v3, "vor"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.writer-global"

    const-string v3, "sgl"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.calc"

    const-string v3, "sxc"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.calc.template"

    const-string v3, "stc"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.draw"

    const-string v3, "sxd"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.draw.template"

    const-string v3, "std"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.impress"

    const-string v3, "sxi"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.impress.template"

    const-string v3, "sti"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.math"

    const-string v3, "sxm"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.writer"

    const-string v3, "sxw"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.writer.global"

    const-string v3, "sxg"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.writer.template"

    const-string v3, "stw"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.visio"

    const-string v3, "vsd"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-abiword"

    const-string v3, "abw"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-apple-diskimage"

    const-string v3, "dmg"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-bcpio"

    const-string v3, "bcpio"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-bittorrent"

    const-string v3, "torrent"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-cdf"

    const-string v3, "cdf"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-cdlink"

    const-string v3, "vcd"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-chess-pgn"

    const-string v3, "pgn"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-cpio"

    const-string v3, "cpio"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-debian-package"

    const-string v3, "deb"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-debian-package"

    const-string v3, "udeb"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-director"

    const-string v3, "dcr"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dir"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dxr"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-dms"

    const-string v3, "dms"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-doom"

    const-string v3, "wad"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-dvi"

    const-string v3, "dvi"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-flac"

    const-string v3, "flac"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-font"

    const-string v3, "pfa"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pfb"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "gsf"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pcf"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pcf.Z"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-freemind"

    const-string v3, "mm"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-futuresplash"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-gnumeric"

    const-string v1, "gnumeric"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-go-sgf"

    const-string v1, "sgf"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-graphing-calculator"

    const-string v1, "gcf"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-gtar"

    const-string v1, "gtar"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tgz"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "taz"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-hdf"

    const-string v1, "hdf"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ica"

    const-string v1, "ica"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-internet-signup"

    const-string v1, "ins"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-internet-signup"

    const-string v1, "isp"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-iphone"

    const-string v1, "iii"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-iso9660-image"

    const-string v1, "iso"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-jmol"

    const-string v1, "jmz"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kchart"

    const-string v1, "chrt"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-killustrator"

    const-string v1, "kil"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-koan"

    const-string v1, "skp"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "skd"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "skt"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "skm"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kpresenter"

    const-string v1, "kpr"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kpresenter"

    const-string v1, "kpt"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kspread"

    const-string v1, "ksp"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kword"

    const-string v1, "kwd"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kword"

    const-string v1, "kwt"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-latex"

    const-string v1, "latex"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-lha"

    const-string v1, "lha"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-lzh"

    const-string v1, "lzh"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-lzx"

    const-string v1, "lzx"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-maker"

    const-string v1, "frm"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "maker"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "frame"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "book"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fbdoc"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-mif"

    const-string v1, "mif"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ms-wmd"

    const-string v1, "wmd"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ms-wmz"

    const-string v1, "wmz"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-msi"

    const-string v1, "msi"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ns-proxy-autoconfig"

    const-string v1, "pac"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-nwc"

    const-string v1, "nwc"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-object"

    const-string v1, "o"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-oz-application"

    const-string v1, "oza"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pem-file"

    const-string v1, "pem"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pkcs12"

    const-string v1, "p12"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pkcs12"

    const-string v1, "pfx"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pkcs7-certreqresp"

    const-string v1, "p7r"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pkcs7-crl"

    const-string v1, "crl"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-quicktimeplayer"

    const-string v1, "qtl"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-shar"

    const-string v1, "shar"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-shockwave-flash"

    const-string v1, "swf"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-stuffit"

    const-string v1, "sit"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-sv4cpio"

    const-string v1, "sv4cpio"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-sv4crc"

    const-string v1, "sv4crc"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-tar"

    const-string v1, "tar"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-texinfo"

    const-string v1, "texinfo"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-texinfo"

    const-string v1, "texi"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-troff"

    const-string v1, "t"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-troff"

    const-string v1, "roff"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-troff-man"

    const-string v1, "man"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ustar"

    const-string v1, "ustar"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-wais-source"

    const-string v1, "src"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-wingz"

    const-string v1, "wz"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-webarchive"

    const-string v1, "webarchive"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-webarchive-xml"

    const-string v1, "webarchivexml"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-x509-ca-cert"

    const-string v1, "crt"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-x509-user-cert"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-x509-server-cert"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-xcf"

    const-string v1, "xcf"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-xfig"

    const-string v1, "fig"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/xhtml+xml"

    const-string v1, "xhtml"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/3gpp"

    const-string v1, "3gpp"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/3gpp2"

    const-string v1, "3gpp2"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/amr"

    const-string v1, "amr"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/amr-wb"

    const-string v1, "awb"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/basic"

    const-string v1, "snd"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/midi"

    const-string v1, "mid"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "midi"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "kar"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "xmf"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/mobile-xmf"

    const-string v1, "mxmf"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/mpeg"

    const-string v1, "mpga"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mpega"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mp2"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mp3"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "m4a"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/mpegurl"

    const-string v1, "m3u"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/prs.sid"

    const-string v1, "sid"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-aiff"

    const-string v1, "aif"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aiff"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aifc"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-gsm"

    const-string v1, "gsm"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-mpegurl"

    const-string v1, "m3u"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-ms-wma"

    const-string v1, "wma"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-ms-wax"

    const-string v1, "wax"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-monkeys-audio"

    const-string v1, "ape"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-pn-realaudio"

    const-string v1, "ra"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-pn-realvideo"

    const-string v1, "rm"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-pn-realvideo"

    const-string v1, "rmvb"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-pn-realaudio"

    const-string v1, "ram"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-realaudio"

    const-string v1, "ra"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-scpls"

    const-string v1, "pls"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-sd2"

    const-string v1, "sd2"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-wav"

    const-string v1, "wav"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/bmp"

    const-string v1, "bmp"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-qcp"

    const-string v1, "qcp"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/gif"

    const-string v1, "gif"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/ico"

    const-string v1, "cur"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/ico"

    const-string v1, "ico"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/ief"

    const-string v1, "ief"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/jpeg"

    const-string v1, "jpeg"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jpg"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jpe"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/pcx"

    const-string v1, "pcx"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/png"

    const-string v1, "png"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/svg+xml"

    const-string v1, "svg"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/svg+xml"

    const-string v1, "svgz"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/vnd.djvu"

    const-string v1, "djvu"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/vnd.djvu"

    const-string v1, "djv"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/vnd.wap.wbmp"

    const-string v1, "wbmp"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-cmu-raster"

    const-string v1, "ras"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-coreldraw"

    const-string v1, "cdr"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-coreldrawpattern"

    const-string v1, "pat"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-coreldrawtemplate"

    const-string v1, "cdt"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-corelphotopaint"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-icon"

    const-string v1, "ico"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-jg"

    const-string v1, "art"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-jng"

    const-string v1, "jng"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-ms-bmp"

    const-string v1, "bmp"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-photoshop"

    const-string v1, "psd"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-portable-anymap"

    const-string v1, "pnm"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-portable-bitmap"

    const-string v1, "pbm"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-portable-graymap"

    const-string v1, "pgm"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-portable-pixmap"

    const-string v1, "ppm"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-rgb"

    const-string v1, "rgb"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-xbitmap"

    const-string v1, "xbm"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-xpixmap"

    const-string v1, "xpm"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-xwindowdump"

    const-string v1, "xwd"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/heic"

    const-string v1, "heic"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model/iges"

    const-string v1, "igs"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model/iges"

    const-string v1, "iges"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model/mesh"

    const-string v1, "msh"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mesh"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "silo"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/calendar"

    const-string v1, "ics"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/calendar"

    const-string v1, "icz"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/comma-separated-values"

    const-string v1, "csv"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/css"

    const-string v1, "css"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/html"

    const-string v1, "htm"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/html"

    const-string v1, "html"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/h323"

    const-string v1, "323"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/iuls"

    const-string v1, "uls"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/mathml"

    const-string v1, "mml"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/plain"

    const-string v1, "txt"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "md"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "asc"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "text"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "diff"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "po"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/richtext"

    const-string v1, "rtx"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/rtf"

    const-string v1, "rtf"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/text"

    const-string v1, "phps"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/tab-separated-values"

    const-string v1, "tsv"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/xml"

    const-string v1, "xml"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-bibtex"

    const-string v1, "bib"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-boo"

    const-string v1, "boo"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-c++hdr"

    const-string v1, "h++"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hpp"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hxx"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hh"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-c++src"

    const-string v1, "c++"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cpp"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cxx"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-chdr"

    const-string v1, "h"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-component"

    const-string v1, "htc"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-csh"

    const-string v1, "csh"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-csrc"

    const-string v1, "c"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-dsrc"

    const-string v1, "d"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-haskell"

    const-string v1, "hs"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-java"

    const-string v1, "java"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-literate-haskell"

    const-string v1, "lhs"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-moc"

    const-string v1, "moc"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-pascal"

    const-string v1, "p"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-pascal"

    const-string v1, "pas"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-pcs-gcd"

    const-string v1, "gcd"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-setext"

    const-string v1, "etx"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-tcl"

    const-string v1, "tcl"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-tex"

    const-string v1, "tex"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ltx"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sty"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cls"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-vcalendar"

    const-string v1, "vcs"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-vcard"

    const-string v1, "vcf"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/3gpp"

    const-string v1, "3gpp"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3gp"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3g2"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/dl"

    const-string v1, "dl"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/dv"

    const-string v1, "dif"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/dv"

    const-string v1, "dv"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/fli"

    const-string v1, "fli"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/m4v"

    const-string v1, "m4v"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mpeg"

    const-string v1, "mpeg"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mpg"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mpe"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp4"

    const-string v1, "mp4"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/quicktime"

    const-string v1, "qt"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/quicktime"

    const-string v1, "mov"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/vnd.mpegurl"

    const-string v1, "mxu"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-la-asf"

    const-string v1, "lsf"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-la-asf"

    const-string v1, "lsx"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-mng"

    const-string v1, "mng"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-asf"

    const-string v1, "asf"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-asf"

    const-string v1, "asx"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-wm"

    const-string v1, "wm"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-wmv"

    const-string v1, "wmv"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-wmx"

    const-string v1, "wmx"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-wvx"

    const-string v1, "wvx"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-msvideo"

    const-string v1, "avi"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-sgi-movie"

    const-string v1, "movie"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-flv"

    const-string v1, "flv"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-matroska"

    const-string v1, "mkv"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-matroska"

    const-string v1, "mka"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/octet-stream"

    const-string v1, "vob"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/MP2T"

    const-string v1, "ts"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp4"

    const-string v1, "f4v"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mts"

    const-string v1, "mts"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/webm"

    const-string v1, "webm"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-conference/x-cooltalk"

    const-string v1, "ice"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-epoc/x-sisx-app"

    const-string v1, "sisx"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/wps"

    const-string v1, "wps"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/wpt"

    const-string v1, "wpt"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/et"

    const-string v1, "et"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/ett"

    const-string v1, "ett"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/dps"

    const-string v1, "dps"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/dpt"

    const-string v1, "dpt"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/metastream"

    const-string v1, "mtz"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/util/MimeUtils;->applyOverrides()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/util/MimeUtils;->mimeTypeToExtensionsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    goto :goto_14

    :cond_e
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    :goto_14
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/fileexplorer/util/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static applyOverrides()V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/util/MimeUtils;->getContentTypesPropertiesStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_37

    goto :goto_17

    :cond_33
    :try_start_33
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3c

    :catchall_37
    move-exception v1

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_3c

    :catch_3c
    :goto_3c
    return-void
.end method

.method private static getContentTypesPropertiesStream()Ljava/io/InputStream;
    .registers 5

    const-string v0, "content.types.user.table"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_13
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    :cond_19
    new-instance v0, Ljava/io/File;

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lib"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v4, "content-types.properties"

    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3e

    :try_start_38
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_3e

    return-object v1

    :catch_3e
    :cond_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDocExts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "txt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "doc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "docx"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ppt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "pptx"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "xls"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "xlsx"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "pdf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "wps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getMimeTypeFromMediaDatabase(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_7
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "mime_type"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v5, v7

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_41

    if-eqz p0, :cond_35

    :try_start_28
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_33

    goto :goto_35

    :catchall_33
    move-exception v0

    goto :goto_45

    :cond_35
    :goto_35
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_40

    const-string v0, "*/*"

    :cond_40
    return-object v0

    :catchall_41
    move-exception p0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    :goto_45
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static guessExtensionFromMimeType(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_27

    :cond_a
    sget-object v1, Lcom/android/fileexplorer/util/MimeUtils;->mimeTypeToExtensionsMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_27
    :goto_27
    return-object v0
.end method

.method public static guessExtensionFromMimeTypes([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_31

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_31

    :cond_6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_24

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/fileexplorer/util/MimeUtils;->guessExtensionFromMimeType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_21

    array-length v4, v3

    if-lez v4, :cond_21

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_24
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_31
    :goto_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public static guessFileTypeFromExtension(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessFileTypeFromMimeType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static guessFileTypeFromMimeType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    if-eqz p1, :cond_a

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "flac/ogg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    if-eqz p1, :cond_2a

    const-string p0, "video/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x2

    return p0

    :cond_2a
    if-eqz p1, :cond_36

    const-string p0, "image/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_36

    const/4 p0, 0x0

    return p0

    :cond_36
    const-string p0, "application/vnd.android.package-archive"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    const/4 p0, 0x3

    return p0

    :cond_40
    const/4 p0, -0x1

    return p0
.end method

.method public static guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/fileexplorer/util/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "*/*"

    :cond_1c
    return-object p0
.end method

.method public static isAudio(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVideo type_all filePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MimeUtils"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->getMimeTypeFromMediaDatabase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2a
    const-string p0, "audio/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isBook(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "epub"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    :cond_1c
    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public static isDoc(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/util/MimeUtils;->getDocExts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_24
    return v1
.end method

.method public static isHorizontalDoc(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->isPPT(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "pdf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public static isImage(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isImage type_all filePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MimeUtils"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->getMimeTypeFromMediaDatabase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2a
    const-string p0, "image/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPPT(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "ppt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "pptx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    :cond_18
    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVideo type_all filePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MimeUtils"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->getMimeTypeFromMediaDatabase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2a
    const-string p0, "video/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
