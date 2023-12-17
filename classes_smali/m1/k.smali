.class public final Lm1/k;
.super Ljava/lang/Thread;
.source "NetCacheManager.java"


# instance fields
.field public final synthetic a:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lm1/k;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lm1/k;->a:Ljava/io/File;

    invoke-static {v0}, Ls1/d;->a(Ljava/io/File;)V

    return-void
.end method
