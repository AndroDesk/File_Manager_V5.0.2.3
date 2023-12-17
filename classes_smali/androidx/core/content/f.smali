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

    .line 1
    iget v0, p0, Landroidx/core/content/f;->a:I

    .line 3
    packed-switch v0, :pswitch_data_28

    .line 6
    goto :goto_11

    .line 7
    :pswitch_6  #0x0
    iget-object v0, p0, Landroidx/core/content/f;->c:Ljava/lang/Object;

    .line 9
    check-cast v0, Ljava/lang/Class;

    .line 11
    iget-object v1, p0, Landroidx/core/content/f;->b:Ll0/f;

    .line 13
    invoke-static {v0, v1, p1}, Landroidx/core/content/IntentSanitizer$Builder;->p(Ljava/lang/Class;Ll0/f;Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :goto_11
    iget-object v0, p0, Landroidx/core/content/f;->b:Ll0/f;

    .line 20
    iget-object v1, p0, Landroidx/core/content/f;->c:Ljava/lang/Object;

    .line 22
    check-cast v1, Ll0/f;

    .line 24
    invoke-interface {v0, p1}, Ll0/f;->test(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_26

    .line 30
    invoke-interface {v1, p1}, Ll0/f;->test(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_24

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    const/4 p1, 0x0

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    :goto_26
    const/4 p1, 0x1

    .line 40
    :goto_27
    return p1

    .line 41
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
