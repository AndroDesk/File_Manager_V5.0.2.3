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

    const-string v0, "doc"

    const-string v1, "docx"

    const-string v2, "xls"

    const-string v3, "xlsx"

    const-string v4, "pdf"

    const-string v5, "ppt"

    const-string v6, "pptx"

    const-string v7, "txt"

    const-string v8, "rtf"

    const-string v9, "htm"

    const-string v10, "html"

    const-string v11, "wpd"

    const-string v12, "pages"

    const-string v13, "key"

    const-string v14, "dot"

    const-string v15, "wps"

    const-string v16, "wpt"

    const-string v17, "docm"

    const-string v18, "dotm"

    const-string v19, "xlt"

    const-string v20, "et"

    const-string v21, "xltx"

    const-string v22, "csv"

    const-string v23, "xlsm"

    const-string v24, "xltm"

    const-string v25, "pptm"

    const-string v26, "ppsx"

    const-string v27, "ppsm"

    const-string v28, "pps"

    const-string v29, "potx"

    const-string v30, "potm"

    const-string v31, "dpt"

    const-string v32, "dps"

    const-string v33, "numbers"

    filled-new-array/range {v0 .. v33}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/micloud/midrive/utils/FileHelper;->LOCAL_DOC_EXT:Ljava/util/Collection;

    const-string v1, "bmp"

    const-string v2, "wbmp"

    const-string v3, "pbm"

    const-string v4, "jpg"

    const-string v5, "jpeg"

    const-string v6, "jpe"

    const-string v7, "jpf"

    const-string v8, "jps"

    const-string v9, "png"

    const-string v10, "pnm"

    const-string v11, "gif"

    const-string v12, "tiff"

    const-string v13, "tif"

    const-string v14, "ief"

    const-string v15, "icon"

    const-string v16, "pcx"

    const-string v17, "svgz"

    const-string v18, "raw"

    const-string v19, "heif"

    const-string v20, "pxr"

    const-string v21, "sct"

    const-string v22, "tga"

    const-string v23, "heic"

    const-string v24, "dng"

    const-string v25, "pbmp"

    const-string v26, "webp"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/micloud/midrive/utils/FileHelper;->LOCAL_IMAGE_EXT:Ljava/util/Collection;

    const-string v0, "rar"

    const-string v1, "zip"

    const-string v2, "7z"

    const-string v3, "tar"

    const-string v4, "gz"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/micloud/midrive/utils/FileHelper;->LOCAL_ZIP_EXT:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileExt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_f
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1e

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    const-string p0, ""

    return-object p0
.end method

.method public static getFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_20

    goto :goto_27

    :cond_20
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    :goto_27
    return-object v0
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_10

    return-object p0

    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
