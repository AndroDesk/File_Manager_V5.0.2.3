.class public final Lm1/k;
.super Ljava/lang/Thread;
.source "NetCacheManager.java"


# instance fields
.field public final synthetic a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lm1/k;->a:Ljava/io/File;

    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lm1/k;->a:Ljava/io/File;

    .line 3
    invoke-static {v0}, Ls1/d;->a(Ljava/io/File;)V

    .line 6
    return-void
.end method
