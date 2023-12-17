.class Lmiuix/hybrid/HybridView$1;
.super Ljava/lang/Object;
.source "HybridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/hybrid/HybridView;->showReloadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/hybrid/HybridView;


# direct methods
.method public constructor <init>(Lmiuix/hybrid/HybridView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/hybrid/HybridView$1;->this$0:Lmiuix/hybrid/HybridView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/hybrid/HybridView$1;->this$0:Lmiuix/hybrid/HybridView;

    .line 3
    invoke-virtual {p1}, Lmiuix/hybrid/HybridView;->reload()V

    .line 6
    iget-object p1, p0, Lmiuix/hybrid/HybridView$1;->this$0:Lmiuix/hybrid/HybridView;

    .line 8
    const/16 v0, 0x8

    .line 10
    invoke-static {p1, v0}, Lmiuix/hybrid/HybridView;->access$000(Lmiuix/hybrid/HybridView;I)V

    .line 13
    return-void
.end method
