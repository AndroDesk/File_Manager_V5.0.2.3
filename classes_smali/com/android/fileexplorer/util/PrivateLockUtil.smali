.class public Lcom/android/fileexplorer/util/PrivateLockUtil;
.super Ljava/lang/Object;
.source "PrivateLockUtil.java"


# instance fields
.field private clsArr:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/fileexplorer/util/PrivateLockUtil$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/util/PrivateLockUtil$1;-><init>(Lcom/android/fileexplorer/util/PrivateLockUtil;)V

    iput-object v0, p0, Lcom/android/fileexplorer/util/PrivateLockUtil;->clsArr:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public enablePrivate(Ljava/lang/Class;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/util/PrivateLockUtil;->clsArr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
