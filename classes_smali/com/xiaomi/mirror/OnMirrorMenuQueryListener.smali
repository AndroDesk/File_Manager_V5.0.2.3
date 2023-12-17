.class public interface abstract Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onMirrorMenuQuery(Landroid/view/View;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/mirror/MirrorMenu;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onMirrorMenuShow(Landroid/view/View;Z)V
.end method
