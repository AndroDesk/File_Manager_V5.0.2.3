.class public Lmiuix/internal/hybrid/webkit/SslErrorHandler;
.super Lmiuix/hybrid/SslErrorHandler;
.source "SslErrorHandler.java"


# instance fields
.field private mSslErrorHandler:Landroid/webkit/SslErrorHandler;


# direct methods
.method public constructor <init>(Landroid/webkit/SslErrorHandler;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/hybrid/SslErrorHandler;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/SslErrorHandler;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 6
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/SslErrorHandler;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 6
    return-void
.end method

.method public proceed()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/SslErrorHandler;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 6
    return-void
.end method
