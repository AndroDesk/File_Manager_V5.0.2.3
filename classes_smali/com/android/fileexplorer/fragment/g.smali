.class public final synthetic Lcom/android/fileexplorer/fragment/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/fragment/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/fragment/g;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_d

    :pswitch_6  #0x0
    check-cast p1, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->b(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)Z

    move-result p1

    return p1

    :goto_d
    check-cast p1, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-static {p1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->a(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)Z

    move-result p1

    return p1

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
