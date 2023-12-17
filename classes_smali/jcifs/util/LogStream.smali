.class public Ljcifs/util/LogStream;
.super Ljava/io/PrintStream;
.source "LogStream.java"


# static fields
.field private static inst:Ljcifs/util/LogStream; = null

.field public static level:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static getInstance()Ljcifs/util/LogStream;
    .registers 1

    sget-object v0, Ljcifs/util/LogStream;->inst:Ljcifs/util/LogStream;

    if-nez v0, :cond_9

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Ljcifs/util/LogStream;->setInstance(Ljava/io/PrintStream;)V

    :cond_9
    sget-object v0, Ljcifs/util/LogStream;->inst:Ljcifs/util/LogStream;

    return-object v0
.end method

.method public static setInstance(Ljava/io/PrintStream;)V
    .registers 2

    new-instance v0, Ljcifs/util/LogStream;

    invoke-direct {v0, p0}, Ljcifs/util/LogStream;-><init>(Ljava/io/PrintStream;)V

    sput-object v0, Ljcifs/util/LogStream;->inst:Ljcifs/util/LogStream;

    return-void
.end method

.method public static setLevel(I)V
    .registers 1

    sput p0, Ljcifs/util/LogStream;->level:I

    return-void
.end method
