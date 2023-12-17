.class public Lcom/android/fileexplorer/provider/DirParseSubProvider;
.super Lcom/android/fileexplorer/provider/AbsCommonProvider;
.source "DirParseSubProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/provider/AbsCommonProvider<",
        "Lcom/android/fileexplorer/dao/parse/DirParse;",
        ">;"
    }
.end annotation


# static fields
.field public static final BASE_PATH:Ljava/lang/String; = "dirparse"

.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/dirparse"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/dirparse"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getBasePath()Ljava/lang/String;
    .registers 2

    const-string v0, "dirparse"

    return-object v0
.end method

.method public getContentItemType()Ljava/lang/String;
    .registers 2

    const-string v0, "vnd.android.cursor.item/dirparse"

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    const-string v0, "vnd.android.cursor.dir/dirparse"

    return-object v0
.end method

.method public initProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/provider/ProviderAdapter<",
            "Lcom/android/fileexplorer/dao/parse/DirParse;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/android/fileexplorer/dao/parse/DirParse;

    .line 3
    new-instance v1, Lcom/android/fileexplorer/dao/GreenDao;

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v2}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 9
    move-result-object v2

    .line 10
    invoke-direct {v1, v0, v2}, Lcom/android/fileexplorer/dao/GreenDao;-><init>(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 13
    new-instance v2, Lcom/android/fileexplorer/provider/ProviderAdapter;

    .line 15
    invoke-direct {v2, v0, v1}, Lcom/android/fileexplorer/provider/ProviderAdapter;-><init>(Ljava/lang/Class;Lcom/android/fileexplorer/dao/Dao;)V

    .line 18
    return-object v2
.end method
