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
.method public constructor <init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/service/IQueryCallBack$Stub;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack;->mQueryCallBack:Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;

    .line 6
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/controller/WeakQueryCallBack;)Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack;->mQueryCallBack:Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;

    .line 3
    return-object p0
.end method


# virtual methods
.method public onQueryFinish()V
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$2;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/controller/WeakQueryCallBack$2;-><init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack;)V

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onQueryItem(Ljava/lang/String;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;

    .line 10
    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;-><init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public onStartQuery(I)V
    .registers 2

    return-void
.end method
