.class public final synthetic Landroidx/core/content/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll0/f;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Landroidx/core/content/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Landroidx/core/content/d;->a:I

    packed-switch v0, :pswitch_data_50

    goto :goto_48

    :pswitch_6  #0x9
    check-cast p1, Landroid/content/ClipData;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->q(Landroid/content/ClipData;)Z

    move-result p1

    return p1

    :pswitch_d  #0x8
    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->b(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :pswitch_14  #0x7
    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->o(Landroid/content/ComponentName;)Z

    move-result p1

    return p1

    :pswitch_1b  #0x6
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->h(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_22  #0x5
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->j(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_29  #0x4
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_30  #0x3
    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->i(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :pswitch_37  #0x2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->e(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_3e  #0x1
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->l(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_43  #0x0
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->f(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :goto_48
    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->d(Landroid/content/ComponentName;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_43  #00000000
        :pswitch_3e  #00000001
        :pswitch_37  #00000002
        :pswitch_30  #00000003
        :pswitch_29  #00000004
        :pswitch_22  #00000005
        :pswitch_1b  #00000006
        :pswitch_14  #00000007
        :pswitch_d  #00000008
        :pswitch_6  #00000009
    .end packed-switch
.end method
