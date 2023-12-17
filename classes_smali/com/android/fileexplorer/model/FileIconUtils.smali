.class public Lcom/android/fileexplorer/model/FileIconUtils;
.super Ljava/lang/Object;
.source "FileIconUtils.java"


# static fields
.field public static final BIG_THUMBNAIL:I = 0x5

.field public static final SMALL_THUMBNAIL:I = 0x3

.field private static sFileExtToIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sFileExtToIconsMirror:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sGridFileExtToIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 39

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/model/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/model/FileIconUtils;->sGridFileExtToIcons:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/model/FileIconUtils;->sFileExtToIconsMirror:Ljava/util/HashMap;

    const-string v0, "mp3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08017f

    const v3, 0x7f0801bb

    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v1, "wma"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0801c6

    invoke-static {v3, v2, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v3, "wav"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0801c5

    invoke-static {v4, v2, v5}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v4, "mid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0801ba

    invoke-static {v5, v2, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v7, "mp4"

    const-string v8, "wmv"

    const-string v9, "mpeg"

    const-string v10, "m4v"

    const-string v11, "3gp"

    const-string v12, "3g2"

    const-string v13, "3gpp2"

    const-string v14, "asf"

    const-string v15, "flv"

    const-string v16, "mkv"

    const-string v17, "vob"

    const-string v18, "ts"

    const-string v19, "f4v"

    const-string v20, "rm"

    const-string v21, "mov"

    const-string v22, "rmvb"

    const-string v23, "movie"

    const-string v24, "dv"

    filled-new-array/range {v7 .. v24}, [Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080194

    const v7, 0x7f0801c4

    invoke-static {v5, v6, v7}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v8, "jpg"

    const-string v9, "jpeg"

    const-string v10, "gif"

    const-string v11, "png"

    const-string v12, "bmp"

    const-string v13, "wbmp"

    const-string v14, "heic"

    filled-new-array/range {v8 .. v14}, [Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f080186

    const v8, 0x7f0801bf

    invoke-static {v5, v7, v8}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v5, "txt"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f08018f

    const v9, 0x7f0801c2

    invoke-static {v7, v8, v9}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v7, "doc"

    const-string v8, "docx"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f080198

    const v11, 0x7f0801c7

    invoke-static {v9, v10, v11}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v9, "ppt"

    const-string v10, "pptx"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f08018a

    const v13, 0x7f0801c0

    invoke-static {v11, v12, v13}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v11, "xls"

    const-string v12, "xlsx"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f08019f

    const v15, 0x7f0801c9

    invoke-static {v13, v14, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v13, "wps"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f08019b

    const v6, 0x7f0801c8

    invoke-static {v14, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v6, "pps"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f08016d

    const/4 v2, -0x1

    invoke-static {v14, v15, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v14, "et"

    move-object/from16 v18, v6

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v6, "wpt"

    move-object/from16 v19, v14

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v15, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v14, "ett"

    move-object/from16 v20, v6

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v6, "dps"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v6, "dpt"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v6, "pdf"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const v2, 0x7f080183

    const v15, 0x7f0801be

    invoke-static {v6, v2, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "zip"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0801a3

    const v15, 0x7f0801cb

    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "mtz"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f08018c

    const v15, 0x7f0801c1

    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "rar"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0801a3

    const v15, 0x7f0801cb

    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "apk"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f080167

    const v15, 0x7f0801b4

    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "amr"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f080162

    const v15, 0x7f0801b2

    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "vcf"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f080190

    const v15, 0x7f0801c3

    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "flac"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0801b7

    const v15, 0x7f08017f

    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "aac"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0801b1

    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "ape"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0801b3

    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "m4a"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0801b9

    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "ogg"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0801bd

    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "audio"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0801bc

    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "html"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0801b8

    const v15, 0x7f08016d

    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "xml"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0801ca

    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "3gpp"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0801b0

    const v15, 0x7f080194

    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "epub"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, -0x1

    const v15, 0x7f08016d

    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "ics"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v15, 0x7f080177

    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "exe"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f080174

    const v15, 0x7f0801b6

    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    const-string v2, "md"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f080243

    const v15, 0x7f0801cc

    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f08017e

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v21, "mp4"

    const-string v22, "wmv"

    const-string v23, "mpeg"

    const-string v24, "m4v"

    const-string v25, "3gp"

    const-string v26, "3g2"

    const-string v27, "3gpp2"

    const-string v28, "asf"

    const-string v29, "flv"

    const-string v30, "mkv"

    const-string v31, "vob"

    const-string v32, "ts"

    const-string v33, "f4v"

    const-string v34, "rm"

    const-string v35, "mov"

    const-string v36, "rmvb"

    const-string v37, "movie"

    const-string v38, "dv"

    filled-new-array/range {v21 .. v38}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080193

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v21, "jpg"

    const-string v22, "jpeg"

    const-string v23, "gif"

    const-string v24, "png"

    const-string v25, "bmp"

    const-string v26, "wbmp"

    const-string v27, "heic"

    filled-new-array/range {v21 .. v27}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080185

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08018e

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080197

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080189

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08019e

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08019a

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08016c

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array/range {v19 .. v19}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "dps"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "dpt"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "pdf"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f080182

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "zip"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0801a2

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "mtz"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f08018c

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "rar"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0801a2

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "apk"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f080166

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "amr"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "vcf"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f080191

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "flac"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "aac"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "ape"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "m4a"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "ogg"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "audio"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "html"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "xml"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "3gpp"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f080193

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "epub"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "ics"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080177

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    const-string v0, "md"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080243

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addItem([Ljava/lang/String;II)V
    .registers 9

    if-eqz p0, :cond_28

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_28

    aget-object v2, p0, v1

    sget-object v3, Lcom/android/fileexplorer/model/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, -0x1

    if-eq p2, v3, :cond_25

    sget-object v3, Lcom/android/fileexplorer/model/FileIconUtils;->sGridFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_28
    return-void
.end method

.method private static addItemMirror([Ljava/lang/String;I)V
    .registers 7

    if-eqz p0, :cond_18

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_18

    aget-object v2, p0, v1

    sget-object v3, Lcom/android/fileexplorer/model/FileIconUtils;->sFileExtToIconsMirror:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_18
    return-void
.end method

.method public static getFileIconId(Ljava/lang/String;)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result p0

    return p0
.end method

.method public static getFileIconId(Ljava/lang/String;ZZ)I
    .registers 3

    if-eqz p1, :cond_19

    sget-object p1, Lcom/android/fileexplorer/model/FileIconUtils;->sFileExtToIconsMirror:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_14

    const p0, 0x7f08016c

    return p0

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_19
    if-eqz p2, :cond_32

    sget-object p1, Lcom/android/fileexplorer/model/FileIconUtils;->sGridFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2d

    const p0, 0x7f0801b5

    return p0

    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_32
    invoke-static {p0}, Lmiuix/fileicon/FileIconUtils;->getFileIconId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
