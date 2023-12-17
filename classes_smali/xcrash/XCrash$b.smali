.class public final Lxcrash/XCrash$b;
.super Ljava/lang/Thread;
.source "XCrash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxcrash/XCrash;->testJavaCrash(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    const-string v1, "test java exception"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method
