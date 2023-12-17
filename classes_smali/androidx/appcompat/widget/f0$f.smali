.class public final Landroidx/appcompat/widget/f0$f;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/f0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/f0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/f0$f;->a:Landroidx/appcompat/widget/f0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0$f;->a:Landroidx/appcompat/widget/f0;

    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Landroidx/appcompat/widget/f0;->l:Landroidx/appcompat/widget/f0$f;

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/widget/f0;->drawableStateChanged()V

    .line 9
    return-void
.end method
