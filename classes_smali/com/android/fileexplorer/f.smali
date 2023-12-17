.class public final synthetic Lcom/android/fileexplorer/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnDragListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 3

    invoke-static {p1, p2}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->c(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p1

    return p1
.end method
