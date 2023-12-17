.class public Lcom/android/fileexplorer/controller/WeakQueryCallBack;
.super Lcom/android/fileexplorer/service/IQueryCallBack$Stub;
.source "WeakQueryCallBack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WeakQueryCallBack"


# instance fields
.field private mQueryCallBack:Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/service/IQueryCallBack$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack;->mQueryCallBack:Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/controller/WeakQueryCallBack;)Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack;->mQueryCallBack:Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;

    return-object p0
.end method


# virtual methods
.method public onQueryFinish()V
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/controller/WeakQueryCallBack$2;-><init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack;)V

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onQueryItem(Ljava/lang/String;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;-><init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartQuery(I)V
    .registers 2

    return-void
.end method
