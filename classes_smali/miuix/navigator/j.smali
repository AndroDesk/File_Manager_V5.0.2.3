.class public final synthetic Lmiuix/navigator/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lmiuix/navigator/NavHostFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/navigator/NavHostFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/j;->a:Lmiuix/navigator/NavHostFragment;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 21

    move-object v0, p0

    iget-object v1, v0, Lmiuix/navigator/j;->a:Lmiuix/navigator/NavHostFragment;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Lmiuix/navigator/NavHostFragment;->b(Lmiuix/navigator/NavHostFragment;Landroid/view/View;IIIIIIII)V

    return-void
.end method
