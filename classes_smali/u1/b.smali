.class public final Lu1/b;
.super Ljava/lang/Object;
.source "RequestDownloadParse.java"

# interfaces
.implements Lt1/b;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lu1/b;->a:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lu1/b;->b:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lu1/b;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method
