.class public Lnet/lingala/zip4j/exception/ZipException;
.super Ljava/io/IOException;
.source "ZipException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/exception/ZipException$Type;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private type:Lnet/lingala/zip4j/exception/ZipException$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$Type;

    iput-object p1, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    sget-object p1, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$Type;

    iput-object p1, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$Type;

    iput-object p1, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lnet/lingala/zip4j/exception/ZipException$Type;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    iput-object p3, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    sget-object p1, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    iput-object p2, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$Type;

    return-void
.end method


# virtual methods
.method public getType()Lnet/lingala/zip4j/exception/ZipException$Type;
    .registers 2

    iget-object v0, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$Type;

    return-object v0
.end method
