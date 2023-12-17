.class public Lcom/android/fileexplorer/provider/AppTagSubProvider;
.super Lcom/android/fileexplorer/provider/AbsCommonProvider;
.source "AppTagSubProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/provider/AbsCommonProvider<",
        "Lcom/android/fileexplorer/dao/file/AppTag;",
        ">;"
    }
.end annotation


# static fields
.field public static final BASE_PATH:Ljava/lang/String; = "apptag"

.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/apptag"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/apptag"


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

    const-string v0, "apptag"

    return-object v0
.end method

.method public getContentItemType()Ljava/lang/String;
    .registers 2

    const-string v0, "vnd.android.cursor.item/apptag"

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    const-string v0, "vnd.android.cursor.dir/apptag"

    return-object v0
.end method

.method public initProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/provider/ProviderAdapter<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/dao/GreenDao;

    .line 3
    const-class v1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 9
    move-result-object v2

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/dao/GreenDao;-><init>(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 13
    new-instance v1, Lcom/android/fileexplorer/provider/ProviderAdapter;

    .line 15
    const-class v2, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 17
    invoke-direct {v1, v2, v0}, Lcom/android/fileexplorer/provider/ProviderAdapter;-><init>(Ljava/lang/Class;Lcom/android/fileexplorer/dao/Dao;)V

    .line 20
    return-object v1
.end method
