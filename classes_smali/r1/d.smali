.class public abstract Lr1/d;
.super Ljava/lang/Object;
.source "KssUploadFile.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lr1/d;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lr1/d;->b:Ljava/lang/String;

    .line 8
    iput-wide p3, p0, Lr1/d;->c:J

    .line 10
    return-void
.end method

.method public static a(Ljava/io/File;)Lr1/b;
    .registers 8

    .line 1
    new-instance v6, Lr1/b;

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 14
    move-result-wide v3

    .line 15
    move-object v0, v6

    .line 16
    move-object v5, p0

    .line 17
    invoke-direct/range {v0 .. v5}, Lr1/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/File;)V

    .line 20
    return-object v6
.end method


# virtual methods
.method public abstract b()Ljava/io/InputStream;
.end method

.method public abstract c()Ls1/l;
.end method

.method public abstract d()Z
.end method
