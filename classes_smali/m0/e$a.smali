.class public final Lm0/e$a;
.super Ljava/lang/Object;
.source "DragAndDropPermissionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/view/DragAndDropPermissions;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/DragAndDropPermissions;->release()V

    .line 4
    return-void
.end method

.method public static b(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
