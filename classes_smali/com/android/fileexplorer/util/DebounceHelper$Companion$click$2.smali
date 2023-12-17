.class final Lcom/android/fileexplorer/util/DebounceHelper$Companion$click$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DebounceHelper.kt"

# interfaces
.implements Lh3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/DebounceHelper$Companion;->click(Landroid/view/View;JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh3/l<",
        "Landroid/view/View;",
        "Ly2/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/util/DebounceHelper$Companion$click$2;->$runnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/util/DebounceHelper$Companion$click$2;->invoke(Landroid/view/View;)V

    sget-object p1, Ly2/e;->a:Ly2/e;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/util/DebounceHelper$Companion$click$2;->$runnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
