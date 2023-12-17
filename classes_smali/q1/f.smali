.class public abstract Lq1/f;
.super Ljava/lang/Object;
.source "KssDownloadFile.java"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lq1/f;->a:Ljava/io/File;

    .line 6
    iput-wide p2, p0, Lq1/f;->b:J

    .line 8
    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Lq1/c;
.end method

.method public abstract c(ZJ)V
.end method

.method public abstract d(J)V
.end method
