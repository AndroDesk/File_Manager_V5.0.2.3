.class public final enum Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
.super Ljava/lang/Enum;
.source "FileCategoryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/controller/FileCategoryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum APP:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum All:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Bluetooth:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Camera:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Download:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Ebook:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum InstalledApp:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum MiDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum MiRouter:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum MiShare:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Other:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum PDF:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum PPT:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Picker:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum RecentSecondary:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Remote:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum ScreenShots:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum SearchDetail:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum SearchResult:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum TYPE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum TYPE_SIDE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Theme:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum VOID:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Word:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum XLS:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final enum Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;


# direct methods
.method public static constructor <clinit>()V
    .registers 39

    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v1, "All"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v3, "Music"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v5, "Video"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v7, "Picture"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v7, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v9, "Doc"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v9, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v11, "Zip"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v11, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v13, "Apk"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v13, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v15, "Ebook"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Ebook:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v15, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v14, "Theme"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v14, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v12, "Custom"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v12, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v10, "Other"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v10, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v8, "Favorite"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v8, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "Bluetooth"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Bluetooth:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v4, "Recent"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v2, "MiRouter"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MiRouter:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "Download"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Download:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v4, "Private"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v2, "Remote"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Remote:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "MiDrive"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MiDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v4, "InstalledApp"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->InstalledApp:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v2, "APP"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->APP:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "Word"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Word:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v4, "XLS"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->XLS:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v4, "PDF"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->PDF:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "PPT"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->PPT:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "MINE"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "TYPE"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->TYPE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "TYPE_SIDE"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->TYPE_SIDE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "SearchResult"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->SearchResult:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "SearchDetail"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->SearchDetail:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "Picker"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picker:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "VOID"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->VOID:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "MiShare"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MiShare:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "CloudDrive"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "Camera"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Camera:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "ScreenShots"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->ScreenShots:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v6, "RecentSecondary"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->RecentSecondary:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/16 v2, 0x25

    new-array v2, v2, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v31, v2, v0

    const/16 v0, 0x1d

    aput-object v32, v2, v0

    const/16 v0, 0x1e

    aput-object v33, v2, v0

    const/16 v0, 0x1f

    aput-object v34, v2, v0

    const/16 v0, 0x20

    aput-object v35, v2, v0

    const/16 v0, 0x21

    aput-object v36, v2, v0

    const/16 v0, 0x22

    aput-object v37, v2, v0

    const/16 v0, 0x23

    aput-object v38, v2, v0

    const/16 v0, 0x24

    aput-object v4, v2, v0

    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->$VALUES:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->$VALUES:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object v0
.end method
