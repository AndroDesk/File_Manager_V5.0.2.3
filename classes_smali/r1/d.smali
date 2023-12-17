.class public abstract Lr1/d;
.super Ljava/lang/Object;
.source "KssUploadFile.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lr1/d;->b:Ljava/lang/String;

    iput-wide p3, p0, Lr1/d;->c:J

    return-void
.end method

.method public static a(Ljava/io/File;)Lr1/b;
    .registers 8

    new-instance v6, Lr1/b;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lr1/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/File;)V

    return-object v6
.end method


# virtual methods
.method public abstract b()Ljava/io/InputStream;
.end method

.method public abstract c()Ls1/l;
.end method

.method public abstract d()Z
.end method
