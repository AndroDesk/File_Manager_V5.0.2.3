.class public final synthetic Lc2/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/CharSequence;

.field public final synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lc2/a;->b:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lc2/a;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lc2/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lc2/a;->b:Ljava/lang/CharSequence;

    iget-boolean v2, p0, Lc2/a;->c:Z

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/mirror/utils/MirrorToastManager;->a(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    return-void
.end method
