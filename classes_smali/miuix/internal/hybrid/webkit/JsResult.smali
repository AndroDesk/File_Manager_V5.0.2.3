.class public Lmiuix/internal/hybrid/webkit/JsResult;
.super Lmiuix/hybrid/JsResult;
.source "JsResult.java"


# instance fields
.field private mJsResult:Landroid/webkit/JsResult;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/webkit/JsResult;)V
    .registers 2

    invoke-direct {p0}, Lmiuix/hybrid/JsResult;-><init>()V

    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/JsResult;->mJsResult:Landroid/webkit/JsResult;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/JsResult;->mJsResult:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method public confirm()V
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/JsResult;->mJsResult:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
