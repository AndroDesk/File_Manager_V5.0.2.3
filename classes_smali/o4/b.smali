.class public final Lo4/b;
.super Ljava/lang/Object;
.source "InternalZipConstants.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/nio/charset/Charset;

.field public static final c:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lo4/b;->a:Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo4/b;->b:Ljava/nio/charset/Charset;

    sput-object v0, Lo4/b;->c:Ljava/nio/charset/Charset;

    return-void
.end method
