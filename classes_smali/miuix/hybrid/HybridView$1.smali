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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/hybrid/HybridView;)V
    .registers 2

    iput-object p1, p0, Lmiuix/hybrid/HybridView$1;->this$0:Lmiuix/hybrid/HybridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lmiuix/hybrid/HybridView$1;->this$0:Lmiuix/hybrid/HybridView;

    invoke-virtual {p1}, Lmiuix/hybrid/HybridView;->reload()V

    iget-object p1, p0, Lmiuix/hybrid/HybridView$1;->this$0:Lmiuix/hybrid/HybridView;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lmiuix/hybrid/HybridView;->access$000(Lmiuix/hybrid/HybridView;I)V

    return-void
.end method
