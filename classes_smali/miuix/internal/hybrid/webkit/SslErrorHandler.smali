.class public Lmiuix/internal/hybrid/webkit/SslErrorHandler;
.super Lmiuix/hybrid/SslErrorHandler;
.source "SslErrorHandler.java"


# instance fields
.field private mSslErrorHandler:Landroid/webkit/SslErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/webkit/SslErrorHandler;)V
    .registers 2

    invoke-direct {p0}, Lmiuix/hybrid/SslErrorHandler;-><init>()V

    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/SslErrorHandler;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/SslErrorHandler;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method

.method public proceed()V
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/SslErrorHandler;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
