.class public final synthetic Landroidx/core/content/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll0/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll0/f;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Ll0/f;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/content/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/content/f;->b:Ll0/f;

    return-void
.end method

.method public synthetic constructor <init>(Ll0/f;Ll0/f;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/content/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/f;->b:Ll0/f;

    iput-object p2, p0, Landroidx/core/content/f;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Landroidx/core/content/f;->a:I

    packed-switch v0, :pswitch_data_28

    goto :goto_11

    :pswitch_6  #0x0
    iget-object v0, p0, Landroidx/core/content/f;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, Landroidx/core/content/f;->b:Ll0/f;

    invoke-static {v0, v1, p1}, Landroidx/core/content/IntentSanitizer$Builder;->p(Ljava/lang/Class;Ll0/f;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :goto_11
    iget-object v0, p0, Landroidx/core/content/f;->b:Ll0/f;

    iget-object v1, p0, Landroidx/core/content/f;->c:Ljava/lang/Object;

    check-cast v1, Ll0/f;

    invoke-interface {v0, p1}, Ll0/f;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-interface {v1, p1}, Ll0/f;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_26

    :cond_24
    const/4 p1, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p1, 0x1

    :goto_27
    return p1

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
