.class public final Ln0/c$c;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ln0/c$c;->a:Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public static a(IIIZ)Ln0/c$c;
    .registers 5

    .line 1
    new-instance v0, Ln0/c$c;

    .line 3
    invoke-static {p0, p1, p3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ln0/c$c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 10
    return-object v0
.end method
