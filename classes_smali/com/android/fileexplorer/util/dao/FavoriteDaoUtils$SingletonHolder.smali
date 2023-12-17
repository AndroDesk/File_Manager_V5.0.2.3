.class Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils$SingletonHolder;
.super Ljava/lang/Object;
.source "FavoriteDaoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final SINGLETON:Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;-><init>(Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils$1;)V

    sput-object v0, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils$SingletonHolder;->SINGLETON:Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils$SingletonHolder;->SINGLETON:Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    return-object v0
.end method
