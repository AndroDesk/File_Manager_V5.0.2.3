.class public final Lcom/micloud/midrive/utils/MimeUtils;
.super Ljava/lang/Object;
.source "MimeUtils.java"


# static fields
.field public static final DOC_MIME_TYPES:[Ljava/lang/String;

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
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/micloud/midrive/utils/MimeUtils;->mimeTypeToExtensionsMap:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/micloud/midrive/utils/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v1, Lcom/micloud/midrive/utils/FileHelper;->LOCAL_DOC_EXT:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_37
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/micloud/midrive/utils/MimeUtils;->DOC_MIME_TYPES:[Ljava/lang/String;

    const-string v0, "application/andrew-inset"

    const-string v1, "ez"

    .line 9
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/dsptype"

    const-string v1, "tsp"

    .line 10
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/futuresplash"

    const-string v1, "spl"

    .line 11
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/hta"

    const-string v2, "hta"

    .line 12
    invoke-static {v0, v2}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/mac-binhex40"

    const-string v2, "hqx"

    .line 13
    invoke-static {v0, v2}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/mac-compactpro"

    const-string v2, "cpt"

    .line 14
    invoke-static {v0, v2}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/mathematica"

    const-string v3, "nb"

    .line 15
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/msaccess"

    const-string v3, "mdb"

    .line 16
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/oda"

    const-string v3, "oda"

    .line 17
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/ogg"

    const-string v3, "ogg"

    .line 18
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oga"

    .line 19
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/aac"

    const-string v3, "aac"

    .line 20
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pdf"

    const-string v3, "pdf"

    .line 21
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pgp-keys"

    const-string v3, "key"

    .line 22
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pgp-signature"

    const-string v3, "pgp"

    .line 23
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pics-rules"

    const-string v3, "prf"

    .line 24
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pkix-cert"

    const-string v3, "cer"

    .line 25
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-rar-compressed"

    const-string v3, "rar"

    .line 26
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/rdf+xml"

    const-string v3, "rdf"

    .line 27
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/rss+xml"

    const-string v3, "rss"

    .line 28
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/zip"

    const-string v3, "zip"

    .line 29
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.android.package-archive"

    const-string v3, "apk"

    .line 30
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.cinderella"

    const-string v3, "cdy"

    .line 31
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-pki.stl"

    const-string v3, "stl"

    .line 32
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.database"

    const-string v3, "odb"

    .line 33
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.formula"

    const-string v3, "odf"

    .line 34
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.graphics"

    const-string v3, "odg"

    .line 35
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.graphics-template"

    const-string v3, "otg"

    .line 36
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.image"

    const-string v3, "odi"

    .line 37
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.spreadsheet"

    const-string v3, "ods"

    .line 38
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.spreadsheet-template"

    const-string v3, "ots"

    .line 39
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text"

    const-string v3, "odt"

    .line 40
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text-master"

    const-string v3, "odm"

    .line 41
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text-template"

    const-string v3, "ott"

    .line 42
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text-web"

    const-string v3, "oth"

    .line 43
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.google-earth.kml+xml"

    const-string v3, "kml"

    .line 44
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.google-earth.kmz"

    const-string v3, "kmz"

    .line 45
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/msword"

    const-string v3, "doc"

    .line 46
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dot"

    .line 47
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-word.document.macroenabled.12"

    const-string v3, "docm"

    .line 48
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-word.template.macroenabled.12"

    const-string v3, "dotm"

    .line 49
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v3, "docx"

    .line 50
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string v3, "dotx"

    .line 51
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-excel"

    const-string v3, "xls"

    .line 52
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-excel"

    const-string v3, "xlt"

    .line 53
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-excel.sheet.macroenabled.12"

    const-string v3, "xlsm"

    .line 54
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-excel.template.macroenabled.12"

    const-string v3, "xltm"

    .line 55
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v3, "xlsx"

    .line 56
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const-string v3, "xltx"

    .line 57
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-powerpoint"

    const-string v3, "ppt"

    .line 58
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "application/vnd.ms-powerpoint.presentation.macroenable.12"

    const-string v4, "pptm"

    .line 59
    invoke-static {v3, v4}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pot"

    .line 60
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "application/vnd.ms-powerpoint.template.macroenable.12"

    const-string v4, "potm"

    .line 61
    invoke-static {v3, v4}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pps"

    .line 62
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-powerpoint.slideshow.macroenable.12"

    const-string v3, "ppsm"

    .line 63
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string v3, "pptx"

    .line 64
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    const-string v3, "potx"

    .line 65
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    const-string v3, "ppsx"

    .line 66
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.rim.cod"

    const-string v3, "cod"

    .line 67
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.smaf"

    const-string v3, "mmf"

    .line 68
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.calc"

    const-string v3, "sdc"

    .line 69
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.draw"

    const-string v3, "sda"

    .line 70
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.impress"

    const-string v3, "sdd"

    .line 71
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.impress"

    const-string v3, "sdp"

    .line 72
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.math"

    const-string v3, "smf"

    .line 73
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.writer"

    const-string v3, "sdw"

    .line 74
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.writer"

    const-string v3, "vor"

    .line 75
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.writer-global"

    const-string v3, "sgl"

    .line 76
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.calc"

    const-string v3, "sxc"

    .line 77
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.calc.template"

    const-string v3, "stc"

    .line 78
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.draw"

    const-string v3, "sxd"

    .line 79
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.draw.template"

    const-string v3, "std"

    .line 80
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.impress"

    const-string v3, "sxi"

    .line 81
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.impress.template"

    const-string v3, "sti"

    .line 82
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.math"

    const-string v3, "sxm"

    .line 83
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.writer"

    const-string v3, "sxw"

    .line 84
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.writer.global"

    const-string v3, "sxg"

    .line 85
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.writer.template"

    const-string v3, "stw"

    .line 86
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.visio"

    const-string v3, "vsd"

    .line 87
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.wordperfect"

    const-string v3, "wpd"

    .line 88
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-abiword"

    const-string v3, "abw"

    .line 89
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-apple-diskimage"

    const-string v3, "dmg"

    .line 90
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-bcpio"

    const-string v3, "bcpio"

    .line 91
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-bittorrent"

    const-string v3, "torrent"

    .line 92
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-cdf"

    const-string v3, "cdf"

    .line 93
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-cdlink"

    const-string v3, "vcd"

    .line 94
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-chess-pgn"

    const-string v3, "pgn"

    .line 95
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-cpio"

    const-string v3, "cpio"

    .line 96
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-debian-package"

    const-string v3, "deb"

    .line 97
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-debian-package"

    const-string v3, "udeb"

    .line 98
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-director"

    const-string v3, "dcr"

    .line 99
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dir"

    .line 100
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dxr"

    .line 101
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-dms"

    const-string v3, "dms"

    .line 102
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-doom"

    const-string v3, "wad"

    .line 103
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-dvi"

    const-string v3, "dvi"

    .line 104
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-flac"

    const-string v3, "flac"

    .line 105
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-font"

    const-string v3, "pfa"

    .line 106
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pfb"

    .line 107
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "gsf"

    .line 108
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pcf"

    .line 109
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pcf.Z"

    .line 110
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-freemind"

    const-string v3, "mm"

    .line 111
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-futuresplash"

    .line 112
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-gnumeric"

    const-string v1, "gnumeric"

    .line 113
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-go-sgf"

    const-string v1, "sgf"

    .line 114
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-graphing-calculator"

    const-string v1, "gcf"

    .line 115
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-gtar"

    const-string v1, "gtar"

    .line 116
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tgz"

    .line 117
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "taz"

    .line 118
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-hdf"

    const-string v1, "hdf"

    .line 119
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ica"

    const-string v1, "ica"

    .line 120
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-internet-signup"

    const-string v1, "ins"

    .line 121
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-internet-signup"

    const-string v1, "isp"

    .line 122
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-iphone"

    const-string v1, "iii"

    .line 123
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-iso9660-image"

    const-string v1, "iso"

    .line 124
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-jmol"

    const-string v1, "jmz"

    .line 125
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kchart"

    const-string v1, "chrt"

    .line 126
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-killustrator"

    const-string v1, "kil"

    .line 127
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-koan"

    const-string v1, "skp"

    .line 128
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "skd"

    .line 129
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "skt"

    .line 130
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "skm"

    .line 131
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kpresenter"

    const-string v1, "kpr"

    .line 132
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kpresenter"

    const-string v1, "kpt"

    .line 133
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kspread"

    const-string v1, "ksp"

    .line 134
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kword"

    const-string v1, "kwd"

    .line 135
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kword"

    const-string v1, "kwt"

    .line 136
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-latex"

    const-string v1, "latex"

    .line 137
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-lha"

    const-string v1, "lha"

    .line 138
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-lzh"

    const-string v1, "lzh"

    .line 139
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-lzx"

    const-string v1, "lzx"

    .line 140
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-maker"

    const-string v1, "frm"

    .line 141
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "maker"

    .line 142
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "frame"

    .line 143
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb"

    .line 144
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "book"

    .line 145
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fbdoc"

    .line 146
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-mif"

    const-string v1, "mif"

    .line 147
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ms-wmd"

    const-string v1, "wmd"

    .line 148
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ms-wmz"

    const-string v1, "wmz"

    .line 149
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-msi"

    const-string v1, "msi"

    .line 150
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ns-proxy-autoconfig"

    const-string v1, "pac"

    .line 151
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-nwc"

    const-string v1, "nwc"

    .line 152
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-object"

    const-string v1, "o"

    .line 153
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-oz-application"

    const-string v1, "oza"

    .line 154
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pem-file"

    const-string v1, "pem"

    .line 155
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pkcs12"

    const-string v1, "p12"

    .line 156
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pkcs12"

    const-string v1, "pfx"

    .line 157
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pkcs7-certreqresp"

    const-string v1, "p7r"

    .line 158
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pkcs7-crl"

    const-string v1, "crl"

    .line 159
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-quicktimeplayer"

    const-string v1, "qtl"

    .line 160
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-shar"

    const-string v1, "shar"

    .line 161
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-shockwave-flash"

    const-string v1, "swf"

    .line 162
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-stuffit"

    const-string v1, "sit"

    .line 163
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-sv4cpio"

    const-string v1, "sv4cpio"

    .line 164
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-sv4crc"

    const-string v1, "sv4crc"

    .line 165
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-tar"

    const-string v1, "tar"

    .line 166
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-texinfo"

    const-string v1, "texinfo"

    .line 167
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-texinfo"

    const-string v1, "texi"

    .line 168
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-troff"

    const-string v1, "t"

    .line 169
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-troff"

    const-string v1, "roff"

    .line 170
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-troff-man"

    const-string v1, "man"

    .line 171
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ustar"

    const-string v1, "ustar"

    .line 172
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-wais-source"

    const-string v1, "src"

    .line 173
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-wingz"

    const-string v1, "wz"

    .line 174
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-webarchive"

    const-string v1, "webarchive"

    .line 175
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-webarchive-xml"

    const-string v1, "webarchivexml"

    .line 176
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-x509-ca-cert"

    const-string v1, "crt"

    .line 177
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-x509-user-cert"

    .line 178
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-x509-server-cert"

    .line 179
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-xcf"

    const-string v1, "xcf"

    .line 180
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-xfig"

    const-string v1, "fig"

    .line 181
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/xhtml+xml"

    const-string v1, "xhtml"

    .line 182
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/3gpp"

    const-string v1, "3gpp"

    .line 183
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/3gpp2"

    const-string v1, "3gpp2"

    .line 184
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/amr"

    const-string v1, "amr"

    .line 185
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/amr-wb"

    const-string v1, "awb"

    .line 186
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/basic"

    const-string v1, "snd"

    .line 187
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/midi"

    const-string v1, "mid"

    .line 188
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "midi"

    .line 189
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "kar"

    .line 190
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "xmf"

    .line 191
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/mobile-xmf"

    const-string v1, "mxmf"

    .line 192
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/mpeg"

    const-string v1, "mpga"

    .line 193
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mpega"

    .line 194
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mp2"

    .line 195
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mp3"

    .line 196
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "m4a"

    .line 197
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/mpegurl"

    const-string v1, "m3u"

    .line 198
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/prs.sid"

    const-string v1, "sid"

    .line 199
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-aiff"

    const-string v1, "aif"

    .line 200
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aiff"

    .line 201
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aifc"

    .line 202
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-gsm"

    const-string v1, "gsm"

    .line 203
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-mpegurl"

    const-string v1, "m3u"

    .line 204
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-ms-wma"

    const-string v1, "wma"

    .line 205
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-ms-wax"

    const-string v1, "wax"

    .line 206
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-monkeys-audio"

    const-string v1, "ape"

    .line 207
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-pn-realaudio"

    const-string v1, "ra"

    .line 208
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-pn-realvideo"

    const-string v1, "rm"

    .line 209
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-pn-realvideo"

    const-string v1, "rmvb"

    .line 210
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-pn-realaudio"

    const-string v1, "ram"

    .line 211
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-realaudio"

    const-string v1, "ra"

    .line 212
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-scpls"

    const-string v1, "pls"

    .line 213
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-sd2"

    const-string v1, "sd2"

    .line 214
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-wav"

    const-string v1, "wav"

    .line 215
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/bmp"

    const-string v1, "bmp"

    .line 216
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-qcp"

    const-string v1, "qcp"

    .line 217
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/gif"

    const-string v1, "gif"

    .line 218
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/ico"

    const-string v1, "cur"

    .line 219
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/ico"

    const-string v1, "ico"

    .line 220
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/ief"

    const-string v1, "ief"

    .line 221
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/jpeg"

    const-string v1, "jpeg"

    .line 222
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jpg"

    .line 223
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jpe"

    .line 224
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/pcx"

    const-string v1, "pcx"

    .line 225
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/png"

    const-string v1, "png"

    .line 226
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/svg+xml"

    const-string v1, "svg"

    .line 227
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/svg+xml"

    const-string v1, "svgz"

    .line 228
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/vnd.djvu"

    const-string v1, "djvu"

    .line 229
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/vnd.djvu"

    const-string v1, "djv"

    .line 230
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/vnd.wap.wbmp"

    const-string v1, "wbmp"

    .line 231
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-cmu-raster"

    const-string v1, "ras"

    .line 232
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-coreldraw"

    const-string v1, "cdr"

    .line 233
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-coreldrawpattern"

    const-string v1, "pat"

    .line 234
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-coreldrawtemplate"

    const-string v1, "cdt"

    .line 235
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-corelphotopaint"

    .line 236
    invoke-static {v0, v2}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-icon"

    const-string v1, "ico"

    .line 237
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-jg"

    const-string v1, "art"

    .line 238
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-jng"

    const-string v1, "jng"

    .line 239
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-ms-bmp"

    const-string v1, "bmp"

    .line 240
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-photoshop"

    const-string v1, "psd"

    .line 241
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-portable-anymap"

    const-string v1, "pnm"

    .line 242
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-portable-bitmap"

    const-string v1, "pbm"

    .line 243
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-portable-graymap"

    const-string v1, "pgm"

    .line 244
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-portable-pixmap"

    const-string v1, "ppm"

    .line 245
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-rgb"

    const-string v1, "rgb"

    .line 246
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-xbitmap"

    const-string v1, "xbm"

    .line 247
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-xpixmap"

    const-string v1, "xpm"

    .line 248
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-xwindowdump"

    const-string v1, "xwd"

    .line 249
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/heic"

    const-string v1, "heic"

    .line 250
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model/iges"

    const-string v1, "igs"

    .line 251
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model/iges"

    const-string v1, "iges"

    .line 252
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model/mesh"

    const-string v1, "msh"

    .line 253
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mesh"

    .line 254
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "silo"

    .line 255
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/calendar"

    const-string v1, "ics"

    .line 256
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/calendar"

    const-string v1, "icz"

    .line 257
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/comma-separated-values"

    const-string v1, "csv"

    .line 258
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/css"

    const-string v1, "css"

    .line 259
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/html"

    const-string v1, "htm"

    .line 260
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/html"

    const-string v1, "html"

    .line 261
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/h323"

    const-string v1, "323"

    .line 262
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/iuls"

    const-string v1, "uls"

    .line 263
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/mathml"

    const-string v1, "mml"

    .line 264
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/plain"

    const-string v1, "txt"

    .line 265
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "asc"

    .line 266
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "text"

    .line 267
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "diff"

    .line 268
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "po"

    .line 269
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/richtext"

    const-string v1, "rtx"

    .line 270
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/rtf"

    const-string v1, "rtf"

    .line 271
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/text"

    const-string v1, "phps"

    .line 272
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/tab-separated-values"

    const-string v1, "tsv"

    .line 273
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/xml"

    const-string v1, "xml"

    .line 274
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-bibtex"

    const-string v1, "bib"

    .line 275
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-boo"

    const-string v1, "boo"

    .line 276
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-c++hdr"

    const-string v1, "h++"

    .line 277
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hpp"

    .line 278
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hxx"

    .line 279
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hh"

    .line 280
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-c++src"

    const-string v1, "c++"

    .line 281
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cpp"

    .line 282
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cxx"

    .line 283
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-chdr"

    const-string v1, "h"

    .line 284
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-component"

    const-string v1, "htc"

    .line 285
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-csh"

    const-string v1, "csh"

    .line 286
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-csrc"

    const-string v1, "c"

    .line 287
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-dsrc"

    const-string v1, "d"

    .line 288
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-haskell"

    const-string v1, "hs"

    .line 289
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-java"

    const-string v1, "java"

    .line 290
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-literate-haskell"

    const-string v1, "lhs"

    .line 291
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-moc"

    const-string v1, "moc"

    .line 292
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-pascal"

    const-string v1, "p"

    .line 293
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-pascal"

    const-string v1, "pas"

    .line 294
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-pcs-gcd"

    const-string v1, "gcd"

    .line 295
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-setext"

    const-string v1, "etx"

    .line 296
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-tcl"

    const-string v1, "tcl"

    .line 297
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-tex"

    const-string v1, "tex"

    .line 298
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ltx"

    .line 299
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sty"

    .line 300
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cls"

    .line 301
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-vcalendar"

    const-string v1, "vcs"

    .line 302
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-vcard"

    const-string v1, "vcf"

    .line 303
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/3gpp"

    const-string v1, "3gpp"

    .line 304
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3gp"

    .line 305
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3g2"

    .line 306
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/dl"

    const-string v1, "dl"

    .line 307
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/dv"

    const-string v1, "dif"

    .line 308
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/dv"

    const-string v1, "dv"

    .line 309
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/fli"

    const-string v1, "fli"

    .line 310
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/m4v"

    const-string v1, "m4v"

    .line 311
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mpeg"

    const-string v1, "mpeg"

    .line 312
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mpg"

    .line 313
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mpe"

    .line 314
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp4"

    const-string v1, "mp4"

    .line 315
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/quicktime"

    const-string v1, "qt"

    .line 316
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/quicktime"

    const-string v1, "mov"

    .line 317
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/vnd.mpegurl"

    const-string v1, "mxu"

    .line 318
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-la-asf"

    const-string v1, "lsf"

    .line 319
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-la-asf"

    const-string v1, "lsx"

    .line 320
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-mng"

    const-string v1, "mng"

    .line 321
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-asf"

    const-string v1, "asf"

    .line 322
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-asf"

    const-string v1, "asx"

    .line 323
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-wm"

    const-string v1, "wm"

    .line 324
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-wmv"

    const-string v1, "wmv"

    .line 325
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-wmx"

    const-string v1, "wmx"

    .line 326
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-wvx"

    const-string v1, "wvx"

    .line 327
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-msvideo"

    const-string v1, "avi"

    .line 328
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-sgi-movie"

    const-string v1, "movie"

    .line 329
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-flv"

    const-string v1, "flv"

    .line 330
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-matroska"

    const-string v1, "mkv"

    .line 331
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-matroska"

    const-string v1, "mka"

    .line 332
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/octet-stream"

    const-string v1, "vob"

    .line 333
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/MP2T"

    const-string v1, "ts"

    .line 334
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mp4"

    const-string v1, "f4v"

    .line 335
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/webm"

    const-string v1, "webm"

    .line 336
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-conference/x-cooltalk"

    const-string v1, "ice"

    .line 337
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-epoc/x-sisx-app"

    const-string v1, "sisx"

    .line 338
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/wps"

    const-string v1, "wps"

    .line 339
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/wpt"

    const-string v1, "wpt"

    .line 340
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/et"

    const-string v1, "et"

    .line 341
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/ett"

    const-string v1, "ett"

    .line 342
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/dps"

    const-string v1, "dps"

    .line 343
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/dpt"

    const-string v1, "dpt"

    .line 344
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/metastream"

    const-string v1, "mtz"

    .line 345
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/micloud/midrive/utils/MimeUtils;->applyOverrides()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/micloud/midrive/utils/MimeUtils;->mimeTypeToExtensionsMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_e

    .line 9
    new-instance v1, Ljava/util/LinkedList;

    .line 11
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 14
    goto :goto_14

    .line 15
    :cond_e
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/LinkedList;

    .line 21
    :goto_14
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/micloud/midrive/utils/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    .line 29
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private static applyOverrides()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/micloud/midrive/utils/MimeUtils;->getContentTypesPropertiesStream()Ljava/io/InputStream;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    new-instance v1, Ljava/util/Properties;

    .line 10
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 16
    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_33

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/String;

    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 48
    invoke-static {v2, v3}, Lcom/micloud/midrive/utils/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_37

    .line 51
    goto :goto_17

    .line 52
    :cond_33
    :try_start_33
    invoke-static {v0}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    .line 55
    goto :goto_3c

    .line 56
    :catchall_37
    move-exception v1

    .line 57
    invoke-static {v0}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    .line 60
    throw v1
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_3c

    .line 61
    :catch_3c
    :goto_3c
    return-void
.end method

.method private static getContentTypesPropertiesStream()Ljava/io/InputStream;
    .registers 5

    .line 1
    const-string v0, "content.types.user.table"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    new-instance v1, Ljava/io/File;

    .line 11
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_19

    .line 20
    :try_start_13
    new-instance v0, Ljava/io/FileInputStream;

    .line 22
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_19

    .line 25
    return-object v0

    .line 26
    :catch_19
    :cond_19
    new-instance v0, Ljava/io/File;

    .line 28
    const-string v1, "java.home"

    .line 30
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const-string v2, "lib"

    .line 36
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v2

    .line 40
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 42
    const-string v4, "content-types.properties"

    .line 44
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3e

    .line 57
    :try_start_38
    new-instance v1, Ljava/io/FileInputStream;

    .line 59
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_3e

    .line 62
    return-object v1

    .line 63
    :catch_3e
    :cond_3e
    const/4 v0, 0x0

    .line 64
    return-object v0
.end method

.method public static getMimeTypeFromMediaDatabase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    const-string v0, "external"

    .line 3
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v2

    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v1

    .line 12
    const-string p0, "mime_type"

    .line 14
    filled-new-array {p0}, [Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    const-string v4, "_data=?"

    .line 20
    const/4 p0, 0x1

    .line 21
    new-array v5, p0, [Ljava/lang/String;

    .line 23
    const/4 p0, 0x0

    .line 24
    aput-object p1, v5, p0

    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    move-result-object p1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_3a

    .line 31
    if-eqz p1, :cond_2e

    .line 33
    :try_start_20
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2e

    .line 39
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object v0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2b

    .line 43
    goto :goto_2e

    .line 44
    :catchall_2b
    move-exception p0

    .line 45
    move-object v0, p1

    .line 46
    goto :goto_3b

    .line 47
    :cond_2e
    :goto_2e
    invoke-static {p1}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_39

    .line 56
    const-string v0, "*/*"

    .line 58
    :cond_39
    return-object v0

    .line 59
    :catchall_3a
    move-exception p0

    .line 60
    :goto_3b
    invoke-static {v0}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    .line 63
    throw p0
.end method

.method public static guessExtensionFromMimeType(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_27

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_27

    .line 11
    :cond_a
    sget-object v1, Lcom/micloud/midrive/utils/MimeUtils;->mimeTypeToExtensionsMap:Ljava/util/Map;

    .line 13
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/util/LinkedList;

    .line 19
    if-eqz p0, :cond_27

    .line 21
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_27

    .line 27
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 30
    move-result v0

    .line 31
    new-array v0, v0, [Ljava/lang/String;

    .line 33
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 37
    check-cast p0, [Ljava/lang/String;

    .line 39
    return-object p0

    .line 40
    :cond_27
    :goto_27
    return-object v0
.end method

.method public static guessExtensionFromMimeTypes([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 1
    if-eqz p0, :cond_31

    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_6

    .line 6
    goto :goto_31

    .line 7
    :cond_6
    new-instance v0, Ljava/util/LinkedList;

    .line 9
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    if-ge v2, v1, :cond_24

    .line 16
    aget-object v3, p0, v2

    .line 18
    invoke-static {v3}, Lcom/micloud/midrive/utils/MimeUtils;->guessExtensionFromMimeType(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_21

    .line 24
    array-length v4, v3

    .line 25
    if-lez v4, :cond_21

    .line 27
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 34
    :cond_21
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_d

    .line 37
    :cond_24
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 40
    move-result p0

    .line 41
    new-array p0, p0, [Ljava/lang/String;

    .line 43
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    check-cast p0, [Ljava/lang/String;

    .line 49
    return-object p0

    .line 50
    :cond_31
    :goto_31
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method

.method public static guessFileTypeFromExtension(Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/utils/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/MimeUtils;->guessFileTypeFromMimeType(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static guessFileTypeFromMimeType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 1
    if-eqz p1, :cond_a

    .line 3
    const-string v0, "audio/"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1c

    .line 11
    :cond_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1e

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    const-string v0, "flac/ogg"

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1e

    .line 29
    :cond_1c
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_1e
    if-eqz p1, :cond_2a

    .line 33
    const-string p0, "video/"

    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_2a

    .line 41
    const/4 p0, 0x2

    .line 42
    return p0

    .line 43
    :cond_2a
    if-eqz p1, :cond_36

    .line 45
    const-string p0, "image/"

    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_36

    .line 53
    const/4 p0, 0x0

    .line 54
    return p0

    .line 55
    :cond_36
    const-string p0, "application/vnd.android.package-archive"

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_40

    .line 63
    const/4 p0, 0x3

    .line 64
    return p0

    .line 65
    :cond_40
    const/4 p0, -0x1

    .line 66
    return p0
.end method

.method public static guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_13

    .line 7
    sget-object v0, Lcom/micloud/midrive/utils/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/String;

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p0, 0x0

    .line 21
    :goto_14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1c

    .line 27
    const-string p0, "*/*"

    .line 29
    :cond_1c
    return-object p0
.end method

.method public static isBook(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    const-string v0, "txt"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1c

    .line 21
    const-string v0, "epub"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1d

    .line 29
    :cond_1c
    const/4 v1, 0x1

    .line 30
    :cond_1d
    return v1
.end method

.method public static isImage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/micloud/midrive/utils/FileHelper;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/micloud/midrive/utils/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "*/*"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_28

    .line 17
    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    const/4 v1, 0x0

    .line 21
    const-string v2, "MimeUtils"

    .line 23
    aput-object v2, v0, v1

    .line 25
    const/4 v1, 0x1

    .line 26
    const-string v2, "isImage type_all filePath = "

    .line 28
    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    aput-object v2, v0, v1

    .line 34
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 37
    invoke-static {p0, p1}, Lcom/micloud/midrive/utils/MimeUtils;->getMimeTypeFromMediaDatabase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    :cond_28
    const-string p0, "image/"

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public static isPPT(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    const-string v0, "ppt"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_18

    .line 17
    const-string v0, "pptx"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_19

    .line 25
    :cond_18
    const/4 v1, 0x1

    .line 26
    :cond_19
    return v1
.end method

.method public static isVideo(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/micloud/midrive/utils/FileHelper;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/micloud/midrive/utils/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "*/*"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_28

    .line 17
    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    const/4 v1, 0x0

    .line 21
    const-string v2, "MimeUtils"

    .line 23
    aput-object v2, v0, v1

    .line 25
    const/4 v1, 0x1

    .line 26
    const-string v2, "isVideo type_all filePath = "

    .line 28
    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    aput-object v2, v0, v1

    .line 34
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 37
    invoke-static {p0, p1}, Lcom/micloud/midrive/utils/MimeUtils;->getMimeTypeFromMediaDatabase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    :cond_28
    const-string p0, "video/"

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    move-result p0

    .line 47
    return p0
.end method
