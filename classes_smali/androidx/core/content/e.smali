.class public final synthetic Landroidx/core/content/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll0/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    iput p2, p0, Landroidx/core/content/e;->a:I

    .line 3
    iput-object p1, p0, Landroidx/core/content/e;->b:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Landroidx/core/content/e;->a:I

    packed-switch v0, :pswitch_data_58

    goto :goto_4e

    :pswitch_6  #0x7
    iget-object v0, p0, Landroidx/core/content/e;->b:Ljava/lang/String;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->k(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    return p1

    :pswitch_f  #0x6
    iget-object v0, p0, Landroidx/core/content/e;->b:Ljava/lang/String;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->m(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p1

    return p1

    :pswitch_18  #0x5
    iget-object v0, p0, Landroidx/core/content/e;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_21  #0x4
    iget-object v0, p0, Landroidx/core/content/e;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_2a  #0x3
    iget-object v0, p0, Landroidx/core/content/e;->b:Ljava/lang/String;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->n(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    return p1

    :pswitch_33  #0x2
    iget-object v0, p0, Landroidx/core/content/e;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_3c  #0x1
    iget-object v0, p0, Landroidx/core/content/e;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_45  #0x0
    iget-object v0, p0, Landroidx/core/content/e;->b:Ljava/lang/String;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->g(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    return p1

    :goto_4e
    iget-object v0, p0, Landroidx/core/content/e;->b:Ljava/lang/String;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->c(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_45  #00000000
        :pswitch_3c  #00000001
        :pswitch_33  #00000002
        :pswitch_2a  #00000003
        :pswitch_21  #00000004
        :pswitch_18  #00000005
        :pswitch_f  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method
