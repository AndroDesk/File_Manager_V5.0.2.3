.class public Lmiuix/internal/hybrid/webkit/ValueCallback;
.super Ljava/lang/Object;
.source "ValueCallback.java"

# interfaces
.implements Lmiuix/hybrid/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiuix/hybrid/ValueCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mValueCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/ValueCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/ValueCallback;->mValueCallback:Landroid/webkit/ValueCallback;

    .line 6
    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/ValueCallback;->mValueCallback:Landroid/webkit/ValueCallback;

    .line 3
    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method
