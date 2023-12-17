.class public Lcom/micloud/midrive/utils/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field public static final LOCAL_DOC_EXT:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCAL_IMAGE_EXT:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCAL_ZIP_EXT:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 34

    .line 1
    const-string v0, "doc"

    .line 3
    const-string v1, "docx"

    .line 5
    const-string v2, "xls"

    .line 7
    const-string v3, "xlsx"

    .line 9
    const-string v4, "pdf"

    .line 11
    const-string v5, "ppt"

    .line 13
    const-string v6, "pptx"

    .line 15
    const-string v7, "txt"

    .line 17
    const-string v8, "rtf"

    .line 19
    const-string v9, "htm"

    .line 21
    const-string v10, "html"

    .line 23
    const-string v11, "wpd"

    .line 25
    const-string v12, "pages"

    .line 27
    const-string v13, "key"

    .line 29
    const-string v14, "dot"

    .line 31
    const-string v15, "wps"

    .line 33
    const-string v16, "wpt"

    .line 35
    const-string v17, "docm"

    .line 37
    const-string v18, "dotm"

    .line 39
    const-string v19, "xlt"

    .line 41
    const-string v20, "et"

    .line 43
    const-string v21, "xltx"

    .line 45
    const-string v22, "csv"

    .line 47
    const-string v23, "xlsm"

    .line 49
    const-string v24, "xltm"

    .line 51
    const-string v25, "pptm"

    .line 53
    const-string v26, "ppsx"

    .line 55
    const-string v27, "ppsm"

    .line 57
    const-string v28, "pps"

    .line 59
    const-string v29, "potx"

    .line 61
    const-string v30, "potm"

    .line 63
    const-string v31, "dpt"

    .line 65
    const-string v32, "dps"

    .line 67
    const-string v33, "numbers"

    .line 69
    filled-new-array/range {v0 .. v33}, [Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lcom/micloud/midrive/utils/FileHelper;->LOCAL_DOC_EXT:Ljava/util/Collection;

    .line 79
    const-string v1, "bmp"

    .line 81
    const-string v2, "wbmp"

    .line 83
    const-string v3, "pbm"

    .line 85
    const-string v4, "jpg"

    .line 87
    const-string v5, "jpeg"

    .line 89
    const-string v6, "jpe"

    .line 91
    const-string v7, "jpf"

    .line 93
    const-string v8, "jps"

    .line 95
    const-string v9, "png"

    .line 97
    const-string v10, "pnm"

    .line 99
    const-string v11, "gif"

    .line 101
    const-string v12, "tiff"

    .line 103
    const-string v13, "tif"

    .line 105
    const-string v14, "ief"

    .line 107
    const-string v15, "icon"

    .line 109
    const-string v16, "pcx"

    .line 111
    const-string v17, "svgz"

    .line 113
    const-string v18, "raw"

    .line 115
    const-string v19, "heif"

    .line 117
    const-string v20, "pxr"

    .line 119
    const-string v21, "sct"

    .line 121
    const-string v22, "tga"

    .line 123
    const-string v23, "heic"

    .line 125
    const-string v24, "dng"

    .line 127
    const-string v25, "pbmp"

    .line 129
    const-string v26, "webp"

    .line 131
    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 138
    move-result-object v0

    .line 139
    sput-object v0, Lcom/micloud/midrive/utils/FileHelper;->LOCAL_IMAGE_EXT:Ljava/util/Collection;

    .line 141
    const-string v0, "rar"

    .line 143
    const-string v1, "zip"

    .line 145
    const-string v2, "7z"

    .line 147
    const-string v3, "tar"

    .line 149
    const-string v4, "gz"

    .line 151
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 158
    move-result-object v0

    .line 159
    sput-object v0, Lcom/micloud/midrive/utils/FileHelper;->LOCAL_ZIP_EXT:Ljava/util/Collection;

    .line 161
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileExt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const/16 v0, 0x2f

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_f

    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    :cond_f
    const/16 v0, 0x2e

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 21
    move-result v0

    .line 22
    if-ltz v0, :cond_1e

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1e
    const-string p0, ""

    .line 33
    return-object p0
.end method

.method public static getFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_f

    .line 15
    return-object v0

    .line 16
    :cond_f
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 21
    move-result v1

    .line 22
    if-ltz v1, :cond_27

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    move-result v2

    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 30
    if-le v1, v2, :cond_20

    .line 32
    goto :goto_27

    .line 33
    :cond_20
    add-int/lit8 v1, v1, 0x1

    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_27
    :goto_27
    return-object v0
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object p0

    .line 8
    :cond_7
    const/16 v0, 0x2e

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 13
    move-result v0

    .line 14
    if-gez v0, :cond_10

    .line 16
    return-object p0

    .line 17
    :cond_10
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
