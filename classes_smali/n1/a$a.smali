.class public final Ln1/a$a;
.super Ljava/lang/Object;
.source "KscHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln1/a;->c(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .registers 2

    const/16 p1, 0x20

    return p1
.end method
