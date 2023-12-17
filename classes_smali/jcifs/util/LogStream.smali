.class public Ljcifs/util/LogStream;
.super Ljava/io/PrintStream;
.source "LogStream.java"


# static fields
.field private static inst:Ljcifs/util/LogStream; = null

.field public static level:I = 0x1


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    return-void
.end method

.method public static getInstance()Ljcifs/util/LogStream;
    .registers 1

    .line 1
    sget-object v0, Ljcifs/util/LogStream;->inst:Ljcifs/util/LogStream;

    .line 3
    if-nez v0, :cond_9

    .line 5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 7
    invoke-static {v0}, Ljcifs/util/LogStream;->setInstance(Ljava/io/PrintStream;)V

    .line 10
    :cond_9
    sget-object v0, Ljcifs/util/LogStream;->inst:Ljcifs/util/LogStream;

    .line 12
    return-object v0
.end method

.method public static setInstance(Ljava/io/PrintStream;)V
    .registers 2

    .line 1
    new-instance v0, Ljcifs/util/LogStream;

    .line 3
    invoke-direct {v0, p0}, Ljcifs/util/LogStream;-><init>(Ljava/io/PrintStream;)V

    .line 6
    sput-object v0, Ljcifs/util/LogStream;->inst:Ljcifs/util/LogStream;

    .line 8
    return-void
.end method

.method public static setLevel(I)V
    .registers 1

    .line 1
    sput p0, Ljcifs/util/LogStream;->level:I

    .line 3
    return-void
.end method
