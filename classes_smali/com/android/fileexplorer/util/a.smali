.class public final synthetic Lcom/android/fileexplorer/util/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll2/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lh3/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lh3/l;I)V
    .registers 3

    iput p2, p0, Lcom/android/fileexplorer/util/a;->a:I

    iput-object p1, p0, Lcom/android/fileexplorer/util/a;->b:Lh3/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/util/a;->a:I

    packed-switch v0, :pswitch_data_18

    :pswitch_5  #0x1
    goto :goto_12

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/fileexplorer/util/a;->b:Lh3/l;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->a(Lh3/l;Ljava/lang/Object;)V

    return-void

    :pswitch_c  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/util/a;->b:Lh3/l;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/AutoDisposeKt;->c(Lh3/l;Ljava/lang/Object;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/fileexplorer/util/a;->b:Lh3/l;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->f(Lh3/l;Ljava/lang/Object;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_5  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
