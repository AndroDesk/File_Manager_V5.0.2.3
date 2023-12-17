.class public Lmiuix/internal/hybrid/webkit/JsResult;
.super Lmiuix/hybrid/JsResult;
.source "JsResult.java"


# instance fields
.field private mJsResult:Landroid/webkit/JsResult;


# direct methods
.method public constructor <init>(Landroid/webkit/JsResult;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/hybrid/JsResult;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/JsResult;->mJsResult:Landroid/webkit/JsResult;

    .line 6
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/JsResult;->mJsResult:Landroid/webkit/JsResult;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 6
    return-void
.end method

.method public confirm()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/JsResult;->mJsResult:Landroid/webkit/JsResult;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 6
    return-void
.end method
