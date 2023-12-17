.class public Lcom/android/fileexplorer/util/PrivateLockUtil;
.super Ljava/lang/Object;
.source "PrivateLockUtil.java"


# instance fields
.field private clsArr:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/util/PrivateLockUtil$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/util/PrivateLockUtil$1;-><init>(Lcom/android/fileexplorer/util/PrivateLockUtil;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/util/PrivateLockUtil;->clsArr:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public enablePrivate(Ljava/lang/Class;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/PrivateLockUtil;->clsArr:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
