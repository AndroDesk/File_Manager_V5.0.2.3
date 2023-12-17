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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    const-string v1, "All"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 11
    new-instance v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 13
    const-string v3, "Music"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 21
    new-instance v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 23
    const-string v5, "Video"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 31
    new-instance v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 33
    const-string v7, "Picture"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 41
    new-instance v7, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 43
    const-string v9, "Doc"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 51
    new-instance v9, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 53
    const-string v11, "Zip"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 61
    new-instance v11, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 63
    const-string v13, "Apk"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 71
    new-instance v13, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 73
    const-string v15, "Ebook"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Ebook:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 81
    new-instance v15, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 83
    const-string v14, "Theme"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 92
    new-instance v14, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 94
    const-string v12, "Custom"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v14, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 103
    new-instance v12, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 105
    const-string v10, "Other"

    .line 107
    const/16 v8, 0xa

    .line 109
    invoke-direct {v12, v10, v8}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 112
    sput-object v12, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 114
    new-instance v10, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 116
    const-string v8, "Favorite"

    .line 118
    const/16 v6, 0xb

    .line 120
    invoke-direct {v10, v8, v6}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 123
    sput-object v10, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 125
    new-instance v8, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 127
    const-string v6, "Bluetooth"

    .line 129
    const/16 v4, 0xc

    .line 131
    invoke-direct {v8, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 134
    sput-object v8, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Bluetooth:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 136
    new-instance v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 138
    const-string v4, "Recent"

    .line 140
    const/16 v2, 0xd

    .line 142
    invoke-direct {v6, v4, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 145
    sput-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 147
    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 149
    const-string v2, "MiRouter"

    .line 151
    move-object/from16 v16, v6

    .line 153
    const/16 v6, 0xe

    .line 155
    invoke-direct {v4, v2, v6}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 158
    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MiRouter:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 160
    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 162
    const-string v6, "Download"

    .line 164
    move-object/from16 v17, v4

    .line 166
    const/16 v4, 0xf

    .line 168
    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 171
    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Download:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 173
    new-instance v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 175
    const-string v4, "Private"

    .line 177
    move-object/from16 v18, v2

    .line 179
    const/16 v2, 0x10

    .line 181
    invoke-direct {v6, v4, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 184
    sput-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 186
    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 188
    const-string v2, "Remote"

    .line 190
    move-object/from16 v19, v6

    .line 192
    const/16 v6, 0x11

    .line 194
    invoke-direct {v4, v2, v6}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 197
    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Remote:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 199
    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 201
    const-string v6, "MiDrive"

    .line 203
    move-object/from16 v20, v4

    .line 205
    const/16 v4, 0x12

    .line 207
    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 210
    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MiDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 212
    new-instance v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 214
    const-string v4, "InstalledApp"

    .line 216
    move-object/from16 v21, v2

    .line 218
    const/16 v2, 0x13

    .line 220
    invoke-direct {v6, v4, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 223
    sput-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->InstalledApp:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 225
    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 227
    const-string v2, "APP"

    .line 229
    move-object/from16 v22, v6

    .line 231
    const/16 v6, 0x14

    .line 233
    invoke-direct {v4, v2, v6}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 236
    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->APP:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 238
    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 240
    const-string v6, "Word"

    .line 242
    move-object/from16 v23, v4

    .line 244
    const/16 v4, 0x15

    .line 246
    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 249
    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Word:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 251
    new-instance v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 253
    const-string v4, "XLS"

    .line 255
    move-object/from16 v24, v2

    .line 257
    const/16 v2, 0x16

    .line 259
    invoke-direct {v6, v4, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 262
    sput-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->XLS:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 264
    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 266
    const-string v4, "PDF"

    .line 268
    move-object/from16 v25, v6

    .line 270
    const/16 v6, 0x17

    .line 272
    invoke-direct {v2, v4, v6}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 275
    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->PDF:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 277
    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 279
    const-string v6, "PPT"

    .line 281
    move-object/from16 v26, v2

    .line 283
    const/16 v2, 0x18

    .line 285
    invoke-direct {v4, v6, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 288
    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->PPT:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 290
    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 292
    const-string v6, "MINE"

    .line 294
    move-object/from16 v27, v4

    .line 296
    const/16 v4, 0x19

    .line 298
    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 301
    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 303
    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 305
    const-string v6, "TYPE"

    .line 307
    move-object/from16 v28, v2

    .line 309
    const/16 v2, 0x1a

    .line 311
    invoke-direct {v4, v6, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 314
    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->TYPE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 316
    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 318
    const-string v6, "TYPE_SIDE"

    .line 320
    move-object/from16 v29, v4

    .line 322
    const/16 v4, 0x1b

    .line 324
    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 327
    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->TYPE_SIDE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 329
    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 331
    const-string v6, "SearchResult"

    .line 333
    move-object/from16 v30, v2

    .line 335
    const/16 v2, 0x1c

    .line 337
    invoke-direct {v4, v6, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 340
    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->SearchResult:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 342
    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 344
    const-string v6, "SearchDetail"

    .line 346
    move-object/from16 v31, v4

    .line 348
    const/16 v4, 0x1d

    .line 350
    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 353
    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->SearchDetail:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 355
    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 357
    const-string v6, "Picker"

    .line 359
    move-object/from16 v32, v2

    .line 361
    const/16 v2, 0x1e

    .line 363
    invoke-direct {v4, v6, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 366
    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picker:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 368
    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 370
    const-string v6, "VOID"

    .line 372
    move-object/from16 v33, v4

    .line 374
    const/16 v4, 0x1f

    .line 376
    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 379
    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->VOID:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 381
    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 383
    const-string v6, "MiShare"

    .line 385
    move-object/from16 v34, v2

    .line 387
    const/16 v2, 0x20

    .line 389
    invoke-direct {v4, v6, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 392
    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MiShare:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 394
    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 396
    const-string v6, "CloudDrive"

    .line 398
    move-object/from16 v35, v4

    .line 400
    const/16 v4, 0x21

    .line 402
    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 405
    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 407
    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 409
    const-string v6, "Camera"

    .line 411
    move-object/from16 v36, v2

    .line 413
    const/16 v2, 0x22

    .line 415
    invoke-direct {v4, v6, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 418
    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Camera:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 420
    new-instance v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 422
    const-string v6, "ScreenShots"

    .line 424
    move-object/from16 v37, v4

    .line 426
    const/16 v4, 0x23

    .line 428
    invoke-direct {v2, v6, v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 431
    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->ScreenShots:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 433
    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 435
    const-string v6, "RecentSecondary"

    .line 437
    move-object/from16 v38, v2

    .line 439
    const/16 v2, 0x24

    .line 441
    invoke-direct {v4, v6, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    .line 444
    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->RecentSecondary:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 446
    const/16 v2, 0x25

    .line 448
    new-array v2, v2, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 450
    const/4 v6, 0x0

    .line 451
    aput-object v0, v2, v6

    .line 453
    const/4 v0, 0x1

    .line 454
    aput-object v1, v2, v0

    .line 456
    const/4 v0, 0x2

    .line 457
    aput-object v3, v2, v0

    .line 459
    const/4 v0, 0x3

    .line 460
    aput-object v5, v2, v0

    .line 462
    const/4 v0, 0x4

    .line 463
    aput-object v7, v2, v0

    .line 465
    const/4 v0, 0x5

    .line 466
    aput-object v9, v2, v0

    .line 468
    const/4 v0, 0x6

    .line 469
    aput-object v11, v2, v0

    .line 471
    const/4 v0, 0x7

    .line 472
    aput-object v13, v2, v0

    .line 474
    const/16 v0, 0x8

    .line 476
    aput-object v15, v2, v0

    .line 478
    const/16 v0, 0x9

    .line 480
    aput-object v14, v2, v0

    .line 482
    const/16 v0, 0xa

    .line 484
    aput-object v12, v2, v0

    .line 486
    const/16 v0, 0xb

    .line 488
    aput-object v10, v2, v0

    .line 490
    const/16 v0, 0xc

    .line 492
    aput-object v8, v2, v0

    .line 494
    const/16 v0, 0xd

    .line 496
    aput-object v16, v2, v0

    .line 498
    const/16 v0, 0xe

    .line 500
    aput-object v17, v2, v0

    .line 502
    const/16 v0, 0xf

    .line 504
    aput-object v18, v2, v0

    .line 506
    const/16 v0, 0x10

    .line 508
    aput-object v19, v2, v0

    .line 510
    const/16 v0, 0x11

    .line 512
    aput-object v20, v2, v0

    .line 514
    const/16 v0, 0x12

    .line 516
    aput-object v21, v2, v0

    .line 518
    const/16 v0, 0x13

    .line 520
    aput-object v22, v2, v0

    .line 522
    const/16 v0, 0x14

    .line 524
    aput-object v23, v2, v0

    .line 526
    const/16 v0, 0x15

    .line 528
    aput-object v24, v2, v0

    .line 530
    const/16 v0, 0x16

    .line 532
    aput-object v25, v2, v0

    .line 534
    const/16 v0, 0x17

    .line 536
    aput-object v26, v2, v0

    .line 538
    const/16 v0, 0x18

    .line 540
    aput-object v27, v2, v0

    .line 542
    const/16 v0, 0x19

    .line 544
    aput-object v28, v2, v0

    .line 546
    const/16 v0, 0x1a

    .line 548
    aput-object v29, v2, v0

    .line 550
    const/16 v0, 0x1b

    .line 552
    aput-object v30, v2, v0

    .line 554
    const/16 v0, 0x1c

    .line 556
    aput-object v31, v2, v0

    .line 558
    const/16 v0, 0x1d

    .line 560
    aput-object v32, v2, v0

    .line 562
    const/16 v0, 0x1e

    .line 564
    aput-object v33, v2, v0

    .line 566
    const/16 v0, 0x1f

    .line 568
    aput-object v34, v2, v0

    .line 570
    const/16 v0, 0x20

    .line 572
    aput-object v35, v2, v0

    .line 574
    const/16 v0, 0x21

    .line 576
    aput-object v36, v2, v0

    .line 578
    const/16 v0, 0x22

    .line 580
    aput-object v37, v2, v0

    .line 582
    const/16 v0, 0x23

    .line 584
    aput-object v38, v2, v0

    .line 586
    const/16 v0, 0x24

    .line 588
    aput-object v4, v2, v0

    .line 590
    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->$VALUES:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 592
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    .line 1
    const-class v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->$VALUES:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 9
    return-object v0
.end method
