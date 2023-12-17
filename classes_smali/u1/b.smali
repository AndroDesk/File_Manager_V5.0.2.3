.class public final Lu1/b;
.super Ljava/lang/Object;
.source "RequestDownloadParse.java"

# interfaces
.implements Lt1/b;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lu1/b;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lu1/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lu1/b;->b:Ljava/lang/String;

    return-object v0
.end method
